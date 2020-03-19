library(jsonlite)

#Data Source ####
#Indiana COVID-19 Data:
#https://www.in.gov/coronavirus/
#Indiana COVID-19 Dashboard links:
#https://www.in.gov/coronavirus/2393.htm
#https://www.arcgis.com/home/item.html?id=255e4039e3dd4d8780d8da7b9b599d70
#https://www.arcgis.com/home/item.html?id=e25ecb3b077e47edbbb2655ea0436030

#pull data from ARC GIS REST interface and format as needed
#relevant documentation: https://stackoverflow.com/questions/50161492/how-do-i-scrape-data-from-an-arcgis-online-map
#Use ARCGIS REST JSON link for the relevant feature layer data
link <- "https://services5.arcgis.com/f2aRfVsQG7TInso2/arcgis/rest/services/County_COVID19/FeatureServer/0/query?where=0%3D0&outFields=%2A&f=json"

json_data <- jsonlite::fromJSON(link)
df<-json_data$features$attributes

