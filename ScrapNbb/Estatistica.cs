using System;

namespace ScrapNbb
{
    [Serializable]
    public class Estatistica
    {
        public string Assistencias { get; set; }
        public string DoisPontos { get; set; }
        public string FaltasCometidas { get; set; }
        public string Jogador { get; set; }
        public string LancesLivres { get; set; }
        public string Minutos { get; set; }
        public bool Noticia { get; set; }
        public string Pontos { get; set; }
        public string Rebotes { get; set; }
        public string TresPontos { get; set; }
    }
}