
team_season_player <- function(team, year){

  webpage = get_team_year_tables(team, year)

  for(statistic in player_statistics){
    get_game_statistics('kicks', webpage,'adelaide')
  }
  return(df)

}
