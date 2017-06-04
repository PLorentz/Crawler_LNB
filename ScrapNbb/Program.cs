using HtmlAgilityPack;
using Newtonsoft.Json;
using OpenQA.Selenium;
using OpenQA.Selenium.PhantomJS;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ScrapNbb
{
    class Program
    {
        static string _caminhoArquivoJogos = @"jogos.json";
        static string _caminhoArquivoEquipes = @"equipes.json";

        static void Main(string[] args)
        {
            //string texto = ExtraiJogos("http://lnb.com.br/nbb/tabela-de-jogos/?season%5B%5D=34&wherePlaying=-1&played=-1");

            string texto = ExtraiInfoEquipes("http://lnb.com.br/nbb/equipes/");

            //File.WriteAllText(_caminhoArquivoJogos, texto);
            File.WriteAllText(_caminhoArquivoEquipes, texto);
        }

        private static string ExtraiInfoEquipes(string url)
        {
            var document = new HtmlWeb().Load(url);

            var secao = document.DocumentNode.Descendants("section").First(s => s.Attributes.Contains("class") && s.Attributes["class"].Value.Contains("archive_team_screen_one"));
            var urlsEquipes = secao.Descendants("a").Select(a => a.Attributes["href"].Value);

            var equipes = ExtraiDadosEquipes(urlsEquipes);

            return JsonConvert.SerializeObject(equipes);
        }

        private static List<Equipe> ExtraiDadosEquipes(IEnumerable<string> urlsEquipes)
        {
            var rand = new Random();
            var equipes = new List<Equipe>();

            foreach (var urlEquipe in urlsEquipes)
            {
                Thread.Sleep((int)Math.Ceiling(2500 * rand.NextDouble()));
                Console.WriteLine(urlEquipe);

                var documentEquipe = new HtmlWeb().Load(urlEquipe);

                var secaoCabecalho = documentEquipe.GetElementbyId("main-container").Descendants("section").First(s => s.Attributes.Contains("class") && s.Attributes["class"].Value.Contains("team_subheader"));
                var nomeTime = secaoCabecalho.Descendants("strong").First(s => s.Attributes.Contains("class") && s.Attributes["class"].Value.Contains("title")).InnerText;
                Console.WriteLine(nomeTime);

                var equipe = new Equipe
                {
                    Url = urlEquipe,
                    Nome = nomeTime,
                    Jogadores = new List<Jogador>()
                };
                equipes.Add(equipe);

                var div6 = documentEquipe.GetElementbyId("6");

                var aJogadores = div6.Descendants("a");

                foreach (var aJogador in aJogadores)
                {
                    var strongs = aJogador.Descendants("strong");

                    var linhaInfo = aJogador.Descendants("table").Single().Descendants("tbody").Single().Descendants("tr").Single();
                    var celulasInfo = linhaInfo.Descendants("td").ToList();

                    equipe.Jogadores.Add(new Jogador
                    {
                        Nome = strongs.First(s => s.Attributes["class"].Value.Contains("name")).InnerText,
                        Numero = strongs.First(s => s.Attributes["class"].Value.Contains("number")).InnerText,
                        Posicao = celulasInfo[0].InnerText,
                        Altura = celulasInfo[1].InnerText,
                        Idade = celulasInfo[2].InnerText,
                        Url = aJogador.Attributes["href"].Value
                    });
                }
            }

            return equipes;
        }

        private static string ExtraiJogos(string url)
        {
            var document = new HtmlWeb().Load(url);

            var linhas = document.DocumentNode.Descendants("table").First().Descendants("tbody").First().Descendants("tr");
            var jogos = linhas.Select(tr =>
            {
                var celulas = tr.Descendants("td").ToList();
                return new Jogo
                {
                    Id = celulas[0].InnerText,
                    Data = celulas[1].InnerText,
                    EquipeCasa = celulas[2].InnerText,
                    PontuacaoCasa = celulas[4].Descendants("span").FirstOrDefault(c => c.Attributes.Contains("class") && c.Attributes["class"].Value.Contains("home"))?.InnerText,
                    PontuacaoVisitante = celulas[4].Descendants("span").FirstOrDefault(c => c.Attributes.Contains("class") && c.Attributes["class"].Value.Contains("away"))?.InnerText,
                    Url = celulas[4].Descendants("a").FirstOrDefault()?.Attributes["href"]?.Value,
                    EquipeVisitante = celulas[6].InnerText,
                    Rodada = celulas[8].InnerText,
                    Fase = celulas[9].InnerText,
                    Campeonato = celulas[10].InnerText,
                    Ginasio = celulas[11].InnerText
                };
            }).ToList();

            var rand = new Random();
            CarregaJogosNoticias(jogos, rand);

            CarregaJogosPartidas(jogos, rand);

            return JsonConvert.SerializeObject(jogos);
        }

        private static void CarregaJogosPartidas(List<Jogo> jogos, Random rand)
        {
            using (var phantom = new PhantomJSDriver())
            {
                foreach (var jogo in jogos.Where(j => j.Url?.Contains("lnb.com.br/partidas/") ?? false))
                {
                    try
                    {
                        Thread.Sleep((int)Math.Ceiling(10 * rand.NextDouble()));
                        Console.WriteLine(jogo.Id);

                        phantom.Navigate().GoToUrl(jogo.Url);
                        EsperaSegundos(phantom, 3);

                        var documentJogo = new HtmlDocument();
                        documentJogo.LoadHtml(phantom.PageSource);

                        var divStats = documentJogo.DocumentNode.Descendants("div").First(d => d.Id == "stats");
                        var divsComClasse = divStats.Descendants("div").Where(d => d.Attributes.Contains("class"));

                        var divCasa = divsComClasse.First(d => d.Attributes["class"].Value.Contains("stats_real_time_table_home"));
                        var tabelaCasa = divCasa.Descendants("table").Skip(1).First().Descendants("tbody").First();
                        jogo.EstatisticasCasa = ExtraiEstatisticaTimePartida(tabelaCasa);

                        var divVisitante = divsComClasse.First(d => d.Attributes["class"].Value.Contains("stats_real_time_table_away"));
                        var tabelaVisitante = divCasa.Descendants("table").Skip(1).First().Descendants("tbody").First();
                        jogo.EstatisticasVisitante = ExtraiEstatisticaTimePartida(tabelaVisitante);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(jogo.Url);
                        Console.WriteLine(ex);
                    }
                }
            }
        }

        private static Action MontaEsperaSegundos(PhantomJSDriver phantom, int segundos)
        {
            var waiter = new WebDriverWait(phantom, TimeSpan.FromSeconds(segundos));
            var espera = new Action(() =>
            {
                try
                {
                    waiter.Until(w => false);
                }
                catch (WebDriverTimeoutException)
                {
                    // Deixo estourar o tempo.
                }
            });
            return espera;
        }

        private static void EsperaSegundos(PhantomJSDriver phantom, int segundos)
        {
            MontaEsperaSegundos(phantom, segundos)();
        }

        private static void CarregaJogosNoticias(List<Jogo> jogos, Random rand)
        {
            foreach (var jogo in jogos.Where(j => j.Url?.Contains("lnb.com.br/noticias/") ?? false))
            {
                try
                {
                    Thread.Sleep((int)Math.Ceiling(3000 * rand.NextDouble()));
                    Console.WriteLine(jogo.Id);

                    var documentJogo = new HtmlWeb().Load(jogo.Url);

                    var divCasa = documentJogo.DocumentNode.Descendants("div").First(d => d.Id == "team_home_stats");
                    var tabelaCasa = divCasa.Descendants("table").First().Descendants("tbody").First();
                    jogo.EstatisticasCasa = ExtraiEstatisticaTimeNoticia(tabelaCasa);

                    var divVisitante = documentJogo.DocumentNode.Descendants("div").First(d => d.Id == "team_away_stats");
                    var tabelaVisitante = divCasa.Descendants("table").First().Descendants("tbody").First();
                    jogo.EstatisticasVisitante = ExtraiEstatisticaTimeNoticia(tabelaVisitante);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(jogo.Url);
                    Console.WriteLine(ex);
                }
            }
        }

        private static List<Estatistica> ExtraiEstatisticaTimeNoticia(HtmlNode tbodyTime)
        {
            var linhasEstatistica = tbodyTime.Descendants("tr");
            var estatisticasTime = linhasEstatistica.Select(tr =>
            {
                var celulas = tr.Descendants("td").ToList();
                return new Estatistica
                {
                    Jogador = celulas[1].InnerText,
                    Minutos = celulas[3].InnerText,
                    Pontos = celulas[4].InnerText,
                    Rebotes = celulas[5].InnerText,
                    Assistencias = celulas[6].InnerText,
                    TresPontos = celulas[7].InnerText,
                    DoisPontos = celulas[8].InnerText,
                    LancesLivres = celulas[9].InnerText,
                    FaltasCometidas = celulas[12].InnerText,
                    Noticia = true
                };
            });

            return estatisticasTime.ToList();
        }

        private static List<Estatistica> ExtraiEstatisticaTimePartida(HtmlNode tbodyTime)
        {
            var linhasEstatistica = tbodyTime.Descendants("tr");
            var estatisticasTime = linhasEstatistica.Select(tr =>
            {
                var celulas = tr.Descendants("td").ToList();
                return new Estatistica
                {
                    Jogador = celulas[1].InnerText,
                    Minutos = celulas[2].InnerText,
                    Pontos = celulas[3].InnerText,
                    Rebotes = celulas[7].InnerText,
                    Assistencias = celulas[8].InnerText,
                    TresPontos = celulas[4].InnerText,
                    DoisPontos = celulas[5].InnerText,
                    LancesLivres = celulas[6].InnerText,
                    FaltasCometidas = celulas[11].InnerText,
                    Noticia = false
                };
            });

            return estatisticasTime.ToList();
        }
    }
}
