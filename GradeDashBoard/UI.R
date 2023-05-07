library(shiny)
library(shinydashboard)
shinyServer(pageWithSidebar(
  headerPanel("My First Dashboard Creation"),
  sidebarPanel(
    textInput("name", "Enter Your Name", "name"),
    sliderInput("mscore", "Enter Your Maths Score", min=0, max=100, value=50, step=1),
    sliderInput("pscore", "Enter Your Physics Score", min=0, max=100, value=50, step=1),
    sliderInput("cscore", "Enter Your Chemistry Score", min=0, max=100, value=50, step=1),
  ),
  
  mainPanel(plotOutput("myplot"))
))