using Newtonsoft.Json;
using ScrapNbb;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JsonToSql
{
    class Program
    {
        static void Main(string[] args)
        {
            //GeraSqlPrincipal();

            GeraSqlUpdateEquipe();
        }

        private static void GeraSqlUpdateEquipe()
        {
            var textoEquipes = File.ReadAllText(@"..\..\..\equipes.json");
            var equipes = JsonConvert.DeserializeObject<List<Equipe>>(textoEquipes);

            var sb = new StringBuilder();

            AcrescentaSql(sb, "");
            AcrescentaSql(sb, $"------------ Posições --------------");
            AcrescentaSql(sb, "");

            foreach (var posicao in equipes.SelectMany(e => e.Jogadores).Select(j => j.Posicao).Distinct())
                AcrescentaSql(sb, $"INSERT INTO `POSICAO` (`DESCRICAO`) VALUES('{posicao}');");

            foreach (var equipe in equipes)
            {

                AcrescentaSql(sb, "");
                AcrescentaSql(sb, $"------------ Equipe: {equipe.Nome} --------------");
                AcrescentaSql(sb, "");

                AcrescentaSql(sb, $"SELECT @idEquipe := ID FROM equipe WHERE NOME = '{equipe.Nome}';");

                foreach (var jogador in equipe.Jogadores)
                {
                    AcrescentaSqlBuscaJogador(sb, jogador.Nome);
                    AcrescentaSql(sb, $"SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = '{jogador.Posicao}';");
                    AcrescentaSql(sb, $"UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;");
                }
            }

            File.WriteAllText("updateEquipe.sql", sb.ToString());
        }

        private static void GeraSqlPrincipal()
        {
            var textoRecuperado = File.ReadAllText(@"..\..\..\jogos.json");
            var jogos = JsonConvert.DeserializeObject<List<Jogo>>(textoRecuperado);

            jogos = TrataJogos(jogos);

            var sql = GeraSql(jogos);

            File.WriteAllText("sql.sql", sql);
        }

        private static List<Jogo> TrataJogos(List<Jogo> jogos)
        {
            return jogos.Select(j =>
            {
                var data = LimpaEspacos(j.Data);
                j.Data = DateTime.ParseExact(data, "dd/MM/yyyyHH:mm", null).ToString("yyyy-MM-dd HH:mm");
                j.EquipeCasa = LimpaEspacosExtremidades(j.EquipeCasa);
                j.EquipeVisitante = LimpaEspacosExtremidades(j.EquipeVisitante);
                j.EstatisticasCasa = TrataEstatisticas(j.EstatisticasCasa ?? new List<Estatistica>());
                j.EstatisticasVisitante = TrataEstatisticas(j.EstatisticasVisitante ?? new List<Estatistica>());
                return j;
            }).ToList();
        }

        private static List<Estatistica> TrataEstatisticas(IEnumerable<Estatistica> estatisticas)
        {
            return estatisticas.Select(e =>
            {
                e.Assistencias = LimpaEspacos(e.Assistencias);
                e.DoisPontos = ExtraiDadoAntes(e.DoisPontos, '/');
                e.FaltasCometidas = ExtraiDadoAntes(e.FaltasCometidas, '.');
                e.LancesLivres = ExtraiDadoAntes(e.LancesLivres, '/');
                e.Minutos = LimpaEspacos(e.Minutos);
                e.Pontos = ExtraiDadoAntes(e.Pontos, '/');
                e.Rebotes = LimpaEspacosExtremidades(e.Rebotes);
                e.Rebotes = e.Rebotes.Substring(e.Rebotes.LastIndexOf(' '));
                e.TresPontos = ExtraiDadoAntes(e.TresPontos, '/');
                return e;
            }).ToList();
        }

        private static string LimpaEspacosExtremidades(string dado)
        {
            return dado.Replace("\r\n", "").Trim();
        }

        private static string LimpaEspacos(string dado)
        {
            return dado.Replace("\r\n", "").Replace(" ", "");
        }

        private static string ExtraiDadoAntes(string dado, char antesDe)
        {
            var dadoLimpo = LimpaEspacos(dado);
            var posicao = dadoLimpo.IndexOf(antesDe);
            if (posicao >= 0)
                return dadoLimpo.Substring(0, dadoLimpo.IndexOf(antesDe));
            return dadoLimpo;
        }

        private static string GeraSql(List<Jogo> jogos)
        {
            var sb = new StringBuilder();

            AcrescentaSql(sb, "");
            AcrescentaSql(sb, "------------ Equipes --------------");
            AcrescentaSql(sb, "");

            foreach (var equipe in jogos.SelectMany(j => new[] { j.EquipeCasa, j.EquipeVisitante }).Distinct())
                AcrescentaSql(sb, $"INSERT INTO `equipe`(`NOME`) VALUES ('{equipe}');");

            var jogadoresPorEquipe = jogos.SelectMany(j => new[] { new { Equipe = j.EquipeCasa, Jogadores = j.EstatisticasCasa.Select(e=> e.Jogador) },
                                                          new { Equipe = j.EquipeVisitante, Jogadores = j.EstatisticasVisitante.Select(e=> e.Jogador) } })
                                          .GroupBy(e => e.Equipe);

            AcrescentaSql(sb, "");
            AcrescentaSql(sb, "------------ Jogadores --------------");
            AcrescentaSql(sb, "");

            foreach (var equipe in jogadoresPorEquipe)
            {
                AcrescentaSql(sb, $"SELECT @idEquipe := ID FROM equipe WHERE NOME = '{equipe.Key}';");
                foreach (var jogador in equipe.SelectMany(e => e.Jogadores).Distinct())
                {
                    AcrescentaSql(sb, $"INSERT INTO `jogador`(`SEXO`, `NOME`) VALUES ('M','{jogador}');");
                    AcrescentaSql(sb, $"SELECT @idJogador := LAST_INSERT_ID();");

                    AcrescentaSql(sb, $"INSERT INTO `equipejogador`(`IDEQUIPE`, `IDJOGADOR`, `DATAINICIAL`, `DATAFINAL`)");
                    AcrescentaSql(sb, $"VALUES(@idEquipe, @idJogador, '2010-05-05', NULL);");
                }
                AcrescentaSql(sb, "");
                AcrescentaSql(sb, "");
            }

            AcrescentaSql(sb, "");
            AcrescentaSql(sb, "------------ Ginásios --------------");
            AcrescentaSql(sb, "");

            foreach (var ginasio in jogos.Select(j => j.Ginasio).Distinct())
                AcrescentaSql(sb, $"INSERT INTO `ginasio`(`NOME`) VALUES('{ginasio}');");

            AcrescentaSql(sb, "");
            AcrescentaSql(sb, "------------ Jogos --------------");
            AcrescentaSql(sb, "");

            foreach (var jogo in jogos)
            {
                AcrescentaSql(sb, $"SELECT @idGinasio := ID FROM ginasio WHERE NOME = '{jogo.Ginasio}';");

                AcrescentaSql(sb, $"INSERT INTO `jogo`(`DURACAO`, `DATA`, `IDEDICAO`, `IDGINASIO`) VALUES(null, '{jogo.Data}', 1, @idGinasio);");
                AcrescentaSql(sb, $"SELECT @idJogo := LAST_INSERT_ID();");

                AcrescentaJogoEquipe(sb, jogo.EquipeCasa, jogo.PontuacaoCasa, true, jogo.EstatisticasCasa);
                AcrescentaJogoEquipe(sb, jogo.EquipeVisitante, jogo.PontuacaoVisitante, false, jogo.EstatisticasVisitante);

                AcrescentaSql(sb, "");
                AcrescentaSql(sb, "");
                AcrescentaSql(sb, "");
            }

            return sb.ToString();
        }

        private static void AcrescentaJogoEquipe(StringBuilder sb, string nomeEquipe, string pontuacao, bool mandante, IEnumerable<Estatistica> estatisticas)
        {
            AcrescentaSql(sb, $"SELECT @idEquipe := ID FROM equipe WHERE NOME = '{nomeEquipe}';");

            AcrescentaSql(sb, $"INSERT INTO `equipejogo`(`IDEQUIPE`, `IDJOGO`, `MANDANTE`, `PONTUACAO`) VALUES(@idEquipe, @idJogo, {(mandante ? 1 : 0)}, {pontuacao});");
            AcrescentaSql(sb, $"SELECT @IdEquipeJogo := LAST_INSERT_ID();");

            foreach (var estatisticaJogador in estatisticas)
            {
                AcrescentaSqlBuscaJogador(sb, estatisticaJogador.Jogador);

                AcrescentaSql(sb, $"INSERT INTO `jogoequipejogador`(`IDJOGADOR`, `IDEQUIPEJOGO`, `LANCELIVRE`, `DOISPONTOS`, `TRESPONTOS`, `PONTO`, `REBOTE`, `FALTASCOMETIDAS`, `ASSISTENCIA`, `MINUTO`)");
                AcrescentaSql(sb, $"VALUES(@idJogador, @IdEquipeJogo, {estatisticaJogador.LancesLivres}, {estatisticaJogador.DoisPontos}, {estatisticaJogador.TresPontos}, {estatisticaJogador.Pontos}, {estatisticaJogador.Rebotes}, {estatisticaJogador.FaltasCometidas}, {estatisticaJogador.Assistencias}, '{estatisticaJogador.Minutos}'); ");
            }
        }

        private static void AcrescentaSqlBuscaJogador(StringBuilder sb, string nomeJogador)
        {
            AcrescentaSql(sb, $@"SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = '{nomeJogador}' AND ej.IDEQUIPE = @idEquipe;");
        }

        private static void AcrescentaSql(StringBuilder sb, string sql)
        {
            sb.AppendLine(sql);
            //Console.WriteLine(sql);
        }
    }
}
