

all_teams_players <- function(year){

  for(team in teams){

    webpage = get_team_year_tables(team, year)

    for(statistic in player_statistics){

      get_game_statistics(statistic, webpage)

    }

  }

}
