library(tidyverse)
library(hoopR)
library(reactable)
library(reactablefmtr)
library(tictoc)

tictoc::tic()
games <- data.frame()
seasons <- 2002:hoopR::most_recent_mbb_season()
progressr::with_progress({
  games <- hoopR::load_mbb_schedule(seasons)
})
tictoc::toc()

games_cleaned <- games %>%
  transmute(
    Season = season,
    SeasonType = season_type,
    GameId = game_id,
    GameDate = date,
    IsNeutralSite = ifelse(neutralSite == TRUE, 1, 0),
    Team = home.id,
    TeamScore = home.score,
    TeamConferenceId = home.conferenceId,
    Opponent = away.id,
    OpponentScore = away.score,
    OpponentConferenceId = away.conferenceId,
    IsFinal = ifelse(status.type.description == 'Final', 1, 0),
    IsHome = ifelse(neutralSite == FALSE, 1, 0)
  )

teams <- hoopR::espn_mbb_teams()

teams_cleaned <- teams %>%
  transmute(
    TeamId = team_id,
    Name = team,
    Abbreviation = abbreviation,
    Mascot = mascot,
    Color = color,
    AltColor = alternate_color,
    Logo = logo,
    LogoDark = logo_dark
  )

conferences <- hoopR::espn_mbb_conferences()

conferences_cleaned <- conferences %>%
  transmute(
    Id = group_id,
    Name = short_name,
    FullName = name,
    Logo = logo
  )
  

