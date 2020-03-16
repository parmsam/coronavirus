library(tidyverse)
library(lubridate)

#main Github data repo info here:
#Novel Coronavirus (COVID-19) Cases, provided by JHU CSSE
#https://github.com/CSSEGISandData/COVID-19

#declare github csv data links here ####
#time series data paths
time_series_19_covid_Confirmed_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv"
time_series_19_covid_Deaths_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.csv"
time_series_19_covid_Recovered_path <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv"
#latest daily report data paths
yesterday <- format(today()-1, "%m-%d-%Y")
csse_covid_19_daily_reports_path <- str_c("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/",
      yesterday, ".csv",sep="")

#read csv data based on paths declared above ####
time_series_19_covid_Confirmed <- read_csv(time_series_19_covid_Confirmed_path)
time_series_19_covid_Deaths <- read_csv(time_series_19_covid_Deaths_path)
time_series_19_covid_Recovered <- read_csv(time_series_19_covid_Recovered_path)

csse_covid_19_daily_reports <- read_csv(csse_covid_19_daily_reports_path)

