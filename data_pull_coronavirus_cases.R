library(tidyverse)
library(lubridate)

#main Github data repo info here:
#Novel Coronavirus (COVID-19) Cases, provided by JHU CSSE
#https://github.com/CSSEGISandData/COVID-19

#declare github csv data links here ####
#time series data paths
time_series_19_covid_Confirmed_global_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv"
time_series_19_covid_Deaths_global_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv"
time_series_19_covid_Recovered_global_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv"

time_series_19_covid_Confirmed_usa_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv"
time_series_19_covid_Deaths_usa_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv"
#time_series_19_covid_Recovered_usa_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_US.csv"

#latest daily report data paths
yesterday <- format(today()-1, "%m-%d-%Y")
csse_covid_19_daily_reports_path <- str_c("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/",
      yesterday, ".csv",sep="")

#read csv data based on paths declared above ####
time_series_19_covid_Confirmed_global <- read_csv(time_series_19_covid_Confirmed_global_path)
time_series_19_covid_Deaths_global <- read_csv(time_series_19_covid_Deaths_global_path)
time_series_19_covid_Recovered_global <- read_csv(time_series_19_covid_Recovered_global_path)

time_series_19_covid_Confirmed_usa <- read_csv(time_series_19_covid_Confirmed_usa_path)
time_series_19_covid_Deaths_usa <- read_csv(time_series_19_covid_Deaths_usa_path)
#time_series_19_covid_Recovered_usa <- read_csv(time_series_19_covid_Recovered_usa_path)

csse_covid_19_daily_reports <- read_csv(csse_covid_19_daily_reports_path)

