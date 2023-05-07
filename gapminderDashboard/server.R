# Define server logic
server <- function(input, output) {
  
  filtered_data <- reactive({
    gapminder %>%
      filter(continent == input$continent,
             year == input$year)
  })
  
  output$scatterplot <- renderPlot({
    ggplot(filtered_data(), aes(x = gdpPercap, y = lifeExp)) +
      geom_point() +
      ggtitle(paste0("Life Expectancy vs. GDP per Capita in ", input$continent, ", ", input$year))
    
    
  })
  
  output$plot2 <- renderPlot({
    ggplot(gapminder, aes_string(x = input$x_var, y = input$y_var)) +
      geom_point(aes(color = continent, size = pop)) +
      
      labs(title = "Scatter plot of Gapminder data", x = input$x_var, y = input$y_var, color = "Continent", size = "Population") +
      theme_bw() +
      theme(panel.grid.major = element_blank(),
            panel.grid.minor = element_blank())
  })
  
  output$table <- renderDataTable({
    filtered_data() %>%
      select(country, gdpPercap, lifeExp) %>%
      arrange(desc(lifeExp))
  })
  
}
