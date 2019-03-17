#' Add together two numbers.
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(10, 1)
add <- function(x, y) {
  x + y
}

team_season <- function(team, season){

  t = which(teams == team)
  url <- paste0("https://afltables.com/afl/stats/teams/",site_teams[t],"/",year,"_gbg.html")
  webpage = read_html(url)

  season_stats = get_all_team_stats(webpage)

  season_stats$season = season
  season_stats$team = team

  return(season_stats)
}
