library(shiny)
library(gapminder)
library(dplyr)
library(ggplot2)
# Define UI for application
ui <- fluidPage(
  titlePanel("Gapminder Dashboard (20BCE0348)"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("continent", "Select a continent", choices = unique(gapminder$continent)),
      selectInput("x_var", "Select X-axis variable", choices = names(gapminder)),
      selectInput("y_var", "Select Y-axis variable", choices = names(gapminder)),
      sliderInput("year", "Select a year", min = 1952, max = 2007, value = 1952)
    ),
    
    mainPanel(
      plotOutput("scatterplot"),
      plotOutput("plot2"),
      dataTableOutput("table")
    )
  )
)