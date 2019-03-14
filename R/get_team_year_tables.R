library(RCurl)
library(rvest)

get_team_year_tables <- function(team, year){

  t = which(teams == team)

  url <- paste0("https://afltables.com/afl/stats/teams/",site_teams[t],"/",year,"_gbg.html")

  webpage = read_html(url)

  return(webpage)

}
