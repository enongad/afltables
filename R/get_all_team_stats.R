

get_all_team_stats <- function(webpage){

  for(statistic in player_statistics){

    stat_df = get_game_statistics(statistic,webpage)

    if(statistic == player_statistics[1]){
      combined = stat_df
      } else{
      combined = merge(x=combined,y=stat_df,by=c("Player","round"),all.x = T)
    }

  }

  combined = combined[!as.character(combined$round) %in% c("Tot","Totals"),]
  combined = combined[!as.character(combined$Player) %in% c("Tot","Totals"),]

  combined[is.na(combined)] <- 0

  return(combined)

}
