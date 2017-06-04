using System;
using System.Collections.Generic;

namespace ScrapNbb
{
    [Serializable]
    public class Jogo
    {
        public string Campeonato { get; set; }
        public string Data { get; set; }
        public string EquipeCasa { get; set; }
        public string EquipeVisitante { get; set; }
        public List<Estatistica> EstatisticasCasa { get; set; }
        public List<Estatistica> EstatisticasVisitante { get; set; }
        public string Fase { get; set; }
        public string Ginasio { get; set; }
        public string Id { get; set; }
        public string PontuacaoCasa { get; set; }
        public string PontuacaoVisitante { get; set; }
        public string Rodada { get; set; }
        public string Url { get; set; }
    }
}