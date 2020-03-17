library(tidyverse)
library(lubridate)
library(stringr)

#Data Source ####
#COVID-19 Tracking Project info:
#https://covidtracking.com/
#API documentation:
#https://covidtracking.com/api/
#State by state data caveats:
#https://covidtracking.com/data/

#pull data from API and format as needed

#State data info
States_info <- read_csv("http://covidtracking.com/api/states/info.csv")
#Counties data info
Counties_info <- read_csv("http://covidtracking.com/api/counties.csv")

#Total Daily US Counts
US_daily <- read_csv("http://covidtracking.com/api/us/daily.csv")
US_daily <- US_daily %>% mutate(date = ymd(date))
#Total Current US counts
US_current <- read_csv("http://covidtracking.com/api/us.csv")

#Current state data (positive, negative, and pending) most updated
States_current <- read_csv("http://covidtracking.com/api/states.csv") 
States_current <- States_current %>% 
  mutate(lastUpdateEt_date = mdy(str_c(str_extract(lastUpdateEt, "\\d/\\d+"),"/2020")))

#Daily State data (positive, negative, and pending) updated at 4pm EST daily
States_daily_4_pm_ET <- read_csv("http://covidtracking.com/api/states/daily.csv")
States_daily_4_pm_ET <- States_daily_4_pm_ET %>% mutate(date = ymd(date))
                                                                                             
