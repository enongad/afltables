#' Retrieve team player statistics for a particular season
#'
#' @param team A number.
#' @param season A number. 2013 - 2018
#' @return A dataframe, all player game statistics

team_season <- function(team, season){

  t = which(teams == team)
  url <- paste0("https://afltables.com/afl/stats/teams/",site_teams[t],"/",year,"_gbg.html")
  webpage = read_html(url)

  season_stats = get_all_team_stats(webpage)

  season_stats$season = season
  season_stats$team = team

  return(season_stats)
}
