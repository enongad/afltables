

team_season <- function(team, season){

  t = which(teams == team)
  url <- paste0("https://afltables.com/afl/stats/teams/",site_teams[t],"/",year,"_gbg.html")
  webpage = read_html(url)

  season_stats = get_all_team_stats(webpage)

  return(season_stats)
}
