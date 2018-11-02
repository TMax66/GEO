header<-dashboardHeader(title="Istituto Zooprofilattico Sperimentale della Lombardia e dell'Emilia Romagna")

body<-dashboardBody(
  fluidRow(
    
    column(width = 12,
           box(width = NULL, solidHeader = TRUE,
               leafletOutput("map", height=400))
           
          
           )
    )
    
  )

dashboardPage(
  header,
  dashboardSidebar(disable = TRUE),
  body
)