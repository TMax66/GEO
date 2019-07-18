library(shiny)
library(shinydashboard)
library(googlesheets)
library(tidyverse)
library(leaflet)
library(maps)
library(rgdal)
library(sp)
library(lubridate)
library(DT)
#library(janitor)
library(RColorBrewer)

coord <- read_excel("coord.xlsx")

lomb<-readOGR(dsn="shp", layer="Province_2018")
lomb<-spTransform(lomb, CRS("+proj=longlat +datum=WGS84"))
emilia<-readOGR(dsn="shp", layer="V_PRV_GPG")
emilia<-spTransform(emilia, CRS("+proj=longlat +datum=WGS84"))


leaflet(emilia) %>% addTiles() %>% 
  addPolygons(data=emilia) %>% 
  addPolygons(data=lomb) %>% 
  addMarkers( data=coord, ~long, ~lat, popup = ~as.character(sez), label = ~as.character(sez))

leaflet(coord) %>% addTiles() %>% 
  addMarkers(  ~long, ~lat, popup = ~as.character(sez), label = ~as.character(sez))
 


# addPolygons(data=emilia) %>% 
  addPolygons(data=lomb)



#%>% 
  addMarkers(  ~long, ~lat, popup = ~as.character(sez), label = ~as.character(sez))




#%>% 
  addPolygons(data=emilia, fillColor="",color="", fillOpacity = 0.9)


  #     
  #     addPolygons(data=BG,fill=F, color="gray", weight=1, opacity=1.0) %>% 