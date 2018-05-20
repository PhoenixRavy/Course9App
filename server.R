# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$plot1 <- renderPlot({
    # generate bins based on input$bins from ui.R
    
    minX <- input$sliderX[1]
    maxX <- input$sliderX[2]
    minY <- input$sliderY[1]
    maxY <- input$sliderY[2]
    dataX <- runif(women$height, minX, maxX)
    dataY <- runif(women$weight, minY, maxY)
    xlab <- ifelse(input$show_xlab, "Height (in)", "")
    ylab <- ifelse(input$show_ylab, "Weight (lbs)", "")
    main <- ifelse(input$show_title, "Women height and weight relationship", "")
    plot(dataX, dataY, xlab=xlab, ylab=ylab, main=main, xlim=c(50, 80), ylim=c(100,170))
    
  })
}


# Run the application 
shinyApp(ui = ui, server = server)