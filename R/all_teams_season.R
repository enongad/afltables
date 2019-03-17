#' Return all teams player statistics for a season
#'
#' @param season A number. 2013 - 2018
#' @return A dataframe, all player game statistics, all teams

all_teams_season <- function(season){

  all_teams = data.frame()

  for(team in teams){

    team_stats = team_season(team, season)

    all_teams = rbind(all_teams, team_stats)

  }

  return(all_teams)

}
