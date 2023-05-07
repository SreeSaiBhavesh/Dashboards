library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)
library(knitr)
library(rmarkdown)

# Load Data
#sobar_72 = read.csv("D:\\VIT\\SEM_6\\DataVisualization&Presentation\\lab\\Cancer-Cervix\\sobar-72.csv")
sobar_72 = read.csv("sobar-72.csv")
# Define UI
ui <- fluidPage(
  titlePanel("Sobar-72 Dashboard"),
  
  # Sidebar with options to select variables
  sidebarLayout(
    sidebarPanel(
      selectInput("x", "X-axis Variable", choices = names(sobar_72)[-19]),
      selectInput("y", "Y-axis Variable", choices = names(sobar_72)[-19])
    ),
    
    # Main panel with visualizations
    mainPanel(
      tabsetPanel(
        tabPanel("Scatterplot", plotOutput("scatterplot")),
        #tabPanel("3D Scatterplot", plotlyOutput("scatterplot3d")),
        tabPanel("Histogram", plotOutput("histogram")),
        tabPanel("Barplot", plotOutput("barplot"))
      )
    )
  )
)


