server <- function(input, output, session) {
  

  
  # dx<-reactive({
  #   avv %>%
  #     filter(anno==input$anno, specie==input$specie) %>%
  #     group_by(comune) %>%
  #     summarise("casi"=n())
  # })
  # 
  # lab<-reactive({
  #   avv %>%
  #     filter(anno==input$anno, specie==input$specie) %>%
  #     group_by(comune, sostanza) %>%
  #     summarise("casi"=n())
  # })
  # 
  # com<-reactive({
  #   dx()$comune
  # })
  # 
  # output$map <- renderLeaflet({
  # 
  #   polycom<-subset(BG, BG@data$NOME_COM %in% com())
  # 
  #   polycom@data %>% inner_join(lab(), by=c("NOME_COM"="comune"))
  # 
  #   pop<-polycom@data$NOME_COM
  # 
  #   leaflet(data=polycom) %>% addTiles() %>%
  #     addPolygons(data=polycom, fillColor="navy",color="", fillOpacity = 0.9, label=pop) %>%
  # 
  #     addPolygons(data=BG,fill=F, color="gray", weight=1, opacity=1.0) %>%
  #     addPolygons(data=provincie, fill=F, color="blue", weight = 2)
  # 
  # })
}
