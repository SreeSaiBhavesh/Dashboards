server <- function(input, output) {
  
  # Create scatterplot
  output$scatterplot <- renderPlot({
    ggplot(sobar_72, aes(x = sobar_72[[input$x]], y = sobar_72[[input$y]], color = factor(ca_cervix))) + 
      geom_point()
  })
  
  
  
  # Create histogram
  output$histogram <- renderPlot({
    ggplot(sobar_72, aes(x = sobar_72[[input$x]], fill = factor(ca_cervix))) + 
      geom_histogram(binwidth = 1, alpha = 0.5) +
      scale_fill_manual(values = c("#0072B2", "#E69F00")) +
      labs(title = paste("Histogram of", input$x), x = input$x, y = "Frequency", fill = "Cervical Cancer")
  })
  
  # Create barplot
  output$barplot <- renderPlot({
    ggplot(sobar_72, aes(x = factor(ca_cervix), fill = factor(sobar_72[[input$x]]))) + 
      geom_bar(position = "dodge") +
      labs(title = paste("Barplot of", input$x), x = "Cervical Cancer", y = "Count", fill = input$x)
  })
  
}