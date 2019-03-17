

all_teams_players <- function(year){

  for(team in teams){

    for(statistic in player_statistics){

      get_game_statistics(statistic, webpage, team)

    }

  }

}
