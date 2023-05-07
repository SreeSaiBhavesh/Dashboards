shinyServer(
  function(input, output, session){
    output$myplot <- renderPlot({
      mathScore <- input$mscore
      phyScore <- input$pscore
      cheScore <- input$cscore
      #if(mathScore > 70){
      #  color <- "Green"
      #}else if(mathScore >40 && mathScore < 70){
       # color <- "Yellow"
      #}else{
       # color <- "Red"
      #}
      #if(phyScore > 70){
       # color <- "Green"
      #}else if(phyScore >40 && phyScore < 70){
       # color <- "Yellow"
      #}else{
       # color <- "Red"
      #}
      #if(cheScore > 70){
       # color <- "Green"
      #}else if(cheScore >40 && cheScore < 70){
       # color <- "Yellow"
      #}else{
       # color <- "Red"
      #}
      tot <- mathScore+phyScore+cheScore
      # if(tot<120){
      #   grade <- "F"
      #   
      # }else if(tot>120 && tot<180){
      #   grade <- "E"
      # 
      # }else if(tot>180 && tot<210){
      #   grade <- "D"
      # }else if(tot>210 && tot<240){
      #   grade <- "C"
      # }else if(tot>240 && tot<270){
      #   grade <- "B"
      # }else{
      #   grade <- "A"
      # }
      #output$myplot <- renderText({ input$name })
      textOutput("name")
      
      fluidRow(
        box(pie(c(tot, 300-tot), c("Total Scored", "Not Scored"), col = c("Green","Red"),main="Total Score")),
        #box(pie(c(phyScore,100-phyScore), c("Marks Scored", "Marks Lost"), col = c("Green", "Yellow"),main="Physics Score")),
        #box(pie(c(cheScore,100-cheScore), c("Marks Scored", "Marks Lost"), col = c("Blue", "Red"),main = "Chemistry Score")),
      )
      
      
    })
  }
)