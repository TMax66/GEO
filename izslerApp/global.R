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
library(janitor)
library(RColorBrewer)


lomb<-readOGR(dsn="shp", layer="Province_2012_polygon")
lomb<-spTransform(lomb, CRS("+proj=longlat +datum=WGS84"))
emilia<-readOGR(dsn="shp", layer="V_LAM_GLI_Ed_2018_ES32")
emilia<-spTransform(emilia, CRS("+proj=longlat +datum=WGS84"))


leaflet(emilia) %>% addTiles() %>% 
  addPolygons(data=emilia) %>% 
  addPolygons(data=lomb)



%>% 
  addPolygons(data=emilia, fillColor="",color="", fillOpacity = 0.9)


  #     
  #     addPolygons(data=BG,fill=F, color="gray", weight=1, opacity=1.0) %>% 