
get_game_statistics <- function(statistic, webpage){

  s = which(player_statistics == statistic)

  raw_stat_table =  webpage %>%
    html_nodes("table") %>%
    .[s] %>%
    html_table(fill = TRUE) %>% as.data.frame()
  n = nrow(raw_stat_table)


}
