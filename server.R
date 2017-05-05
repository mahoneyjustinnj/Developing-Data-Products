
#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
  output$text1 <- renderText(input$slider1)
  output$text2 <- renderText(((input$slider2) ))
  output$text3 <- renderText(((input$slider2) * 0.4545) / ((input$slider1 * 0.01) * (input$slider1 * 0.01)) )
})