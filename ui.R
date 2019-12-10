library(shiny)

shinyUI(
  fluidPage(
    
  titlePanel("Distribuicoes"),
  
  sidebarLayout(
    sidebarPanel(
    radioButtons(inputId="dist",
                 label = "Selecione a distribuico",
                 choices = c("Normal" = "norm",
                             "Uniforme" = "unif",
                             "Log-Normal" = "lnorm")
                 ),
    sliderInput(inputId="n",label = "Numero de amostras",
                min = 10, max = 1000, step = 10, value = 10),
    checkboxInput(inputId = "den",label = "Densidade")
    ),
    mainPanel(
      tabsetPanel(
      tabPanel("Histograma",plotOutput("hist"))  ,
      tabPanel("Resumo",verbatimTextOutput("sum"))
    )
   )
  )
    
  )

)
