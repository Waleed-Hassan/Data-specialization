BMI-calculator
========================================================
author:WAleed Hassan 
date: 23/11/2014

Author details
========================================================

## Waleed is a junior biostatistician working in Childrens Cancer Hospital Egypt 57357. Waleed started learning R programming in the dataa science specialization track offered by John Hopkins. This is the first online application done by Waleed

Application details
========================================================

## In this application you will have to enter your weight in KILOGRAMS and your height in METRES then click submit button. On the output you will notice that your BMI is calculated and your weight category is identified. Category will be identified from the plot in the next slide.


Plot to identify BMI category
========================================================

![](chart.png)

Equation to calculate the BMI
======
## BMI depends on weight and height. The following R code is used to calculate the BMI


```r
bmi <- function(w,h) {w/h^2}
```



