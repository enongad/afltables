
get_game_statistics <- function(statistic, webpage, team){

  s = which(player_statistics == statistic)

  raw_stat_table =  webpage %>%
    rvest::html_nodes("table") %>%
    .[s] %>%
    rvest::html_table(fill = TRUE) %>% as.data.frame()

  n = nrow(raw_stat_table)

  stat_table = raw_stat_table[2:n,]
  names(stat_table) = raw_stat_table[1,]
  # stat_table = stat_table[!is.na(stat_table)]

  long_stats <- melt(stat_table,id="Player")
  long_stats$value = suppressWarnings(as.numeric(long_stats$value))
  long_stats <- long_stats[!is.na(long_stats$value),]

  colnames(long_stats)[2:3] <- c("round",statistic)

  if(!exists(team)){
    assign(team, long_stats)
    } else {
    assign(team,merge(x=get(team),y=long_stats,by=c("Player","round"),all.x = T))

      }

  assign(team, `[[<-`(get(team), 'team', value = team))

  return(get(team))
}
