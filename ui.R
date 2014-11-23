library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("BMI calculator"),
  sidebarPanel(
    numericInput('w', 'Weight in Kg', 0, min= 40, max= 200, step= 1) ,
    numericInput('h', 'Height in m', 0, min= 1, max= 3, step= 0.01) ,
    submitButton('Submit'),
    h3('Author: Waleed Hassan'),
    h4('Waleed is a junior biostatistician working in Childrens Cancer Hospital Egypt 57357. Waleed started learning R programming in the dataa science specialization track offered by John Hopkins. This is the first online application done by Waleed.')),
  mainPanel(
    h3('Results'),
    verbatimTextOutput("B"),
    h4('In this application you will have to enter your weight in KILOGRAMS and your height in METRES then click submit button. On the output you will notice that your BMI is calculated and your weight category is identified')
  )
))