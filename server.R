library(shiny)
bmi <- function(w,h) {w/h^2}
category <- function(x) { 
  if(x < 15 ) category <- "severly underweight" else {
    if( x< 18.5) category <- "underweigth" else {
      if (x < 25) category <- "Normal weight" else {
        if (x < 30) category <- "Overweight" else {
          if (x < 35) category<- "Moderate Obesity" else {
            if(x < 40) category<- "Severe Obesity"
          }
        }
      }
    }
  }
  cat (paste("Your BMI is:", round(x,2), "This corresponds to category:", category ))
}
shinyServer(
  function(input, output) { 
      output$B<- renderPrint({category(bmi(input$w,input$h))})  
    }
)