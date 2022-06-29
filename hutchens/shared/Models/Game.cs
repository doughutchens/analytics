namespace Analytics.Hutchens.Shared
{
    public class Game
    {
        public int GameId {get; set;}
        public DateTime GameDate {get; set;}
        public bool IsNeutralSite {get; set;}
        public int TeamId {get; set;}
        public int TeamScore {get; set;}
        public int TeamConferenceId {get; set;}
        public int OpponentId {get; set;}
        public int OpponentScore {get; set;}
        public int OpponentConferenceId {get; set;}
        public bool IsFinal {get; set;}
        public bool IsHome {get; set;}
        public int Season {get; set;}
        public int SeasonType {get; set;}
    }
}