#
# This is the final project for Developing Data Products
# Written by Justin Mahoney
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Determine your Body Mass Index (BMI)"),
  sidebarLayout(
    sidebarPanel(
      h4("Use the slider to enter your height in centimeters (cm)"),
      sliderInput("slider1", "Slide Me!", 0, 200, 0),
      h4("Use the slider to enter your weight in pounds (lbs)"),
      sliderInput("slider2", "Slide Me!", 0, 300, 0)
    ),
    
    mainPanel(
      em("Height (cm)"),
      textOutput("text1"),
      em("Weight (lbs)"),
      textOutput("text2"),
      em("Your Body mass index (BMI) is:"),
      textOutput("text3")
    )
    
  )
))