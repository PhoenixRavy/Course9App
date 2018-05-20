#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titrePanel("Plot Lobolly growth pine tree"),
  sidebarLayout(
    sidebarPanel(
      numericInput("nuemric", "How many tree would you want to plot?",
                   value=84, min=1, max=84, step=1),
      sliderInput("sliderX", "Choose a min and max X values",
                  0, 30, value= c(0,30)),
      sliderInput("sliderY", "Choose a min and max Y values",
                  3, 65, value= c(3,65)),
      checkboxInput("show_xlab", "Loblolly pine tree age", value=TRUE),
      checkboxInput("show_ylab", "Loblolly pine tree height (ft)", value=TRUE),
      checkboxInput("show_title", "Age and Loblolly pine tree height's relationship")
    ),
    mainPanel(
      h3("Graph of Loblolly pine tree"),
      plotOutput("plot1")
    )
  )
))

