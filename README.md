# afltables
v1.0.0

Current functionality is all based on returning individual player statistics.

## Installation
```r  
install.packages('devtools')
library(devtools)
install_github('enongad/afltables')
```

## Team Labels
Currently teams must be entered as shown below.
```r
 [1] "adelaide"        "brisbane"        "carlton"         "collingwood"     "essendon"        "fremantle"      
 [7] "geelong"         "goldcoast"       "gws"             "hawthorn"        "melbourne"       "north melbourne"
[13] "port adelaide"   "richmond"        "stkilda"         "sydney"          "westcoast"       "bulldogs"      
```

## Player Statistics

`all_teams_season(season)`  
This function takes a season (can be numeric) and returns a data frame, containing team, season, player, round and all statistics.

`team_season(team, season)`
This function takes a season (can be numeric) and team name (as shown above) and returns all players statistics for each game they played.
