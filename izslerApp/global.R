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
library(readxl)
library(RColorBrewer)
library(knitr)
library(kableExtra)

coord <- read_excel("coord.xlsx")

L<-readOGR(dsn="shp", layer="Regione_2018")
L<-spTransform(L, CRS("+proj=longlat +datum=WGS84"))

lomb<-readOGR(dsn="shp", layer="Province_2018")
lomb<-spTransform(lomb, CRS("+proj=longlat +datum=WGS84"))
emilia<-readOGR(dsn="shp", layer="V_PRV_GPG")
emilia<-spTransform(emilia, CRS("+proj=longlat +datum=WGS84"))


leaflet(emilia) %>% addTiles() %>% 
  #addPolygons(data=emilia) %>% 
  addPolygons(data=L,fill="F", fillColor="navy", 
              fillOpacity = 0.1,weight=1, opacity=1) %>% 
  addPolygons(data=lomb,weight=2, fillColor="black") %>% 
  addPolygons(data=emilia,weight=2,  fillColor="black") %>% 
  addMarkers( data=coord, ~long, ~lat, popup = ~as.character(sez), label = ~as.character(sez))

# leaflet(coord) %>% addTiles() %>% 
#   addMarkers(  ~long, ~lat, popup = ~as.character(sez), label = ~as.character(sez)) %>% 
#   addPolygons(data=lomb) %>% 
#   addMarkers(  ~long, ~lat, popup = ~as.character(sez), label = ~as.character(sez)) %>% 
#   addPolygons(data=emilia, fillColor="",color="", fillOpacity = 0.3)


