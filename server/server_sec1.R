##########################################################################
#
# Shiny Interactive Web App
# Using the Iris data 
#
##########################################################################
# Text snippets for Section 1
#########################################################################

##############################
#            server 
##############################

###### Subsection 1 ##########

# Reactive dataset 
data_sec1 <- reactive({
  ret <- data
  
  if (!is.null(input$specie)) {
    ret %<>% filter(Species %in% input$specie)
  }
  
  ret 
})

# Table output 
output$table_histograms <- renderDataTable({
  data <- data_sec1()
  out_table_diff <- datatable(
    data %>%
      select(
        "Specie" = Species,
        "Petal Width" = Petal.Width,
        "Petal Length" = Petal.Length,
        "Sepal.Width" = Sepal.Width,
        "Sepal.Length" = Sepal.Length

      ))})


# Plot Output 

output$plot_histograms <- renderPlot({
  bin = input$bin
  var = input$variable
  data <- data_sec1()
  mydata <- data.frame(var = data[[var]])
  
  sdat <- summary(mydata)
  summStr <- paste(names(sdat), format(sdat, digits = 2), collapse = "; ")
  
  op <- par(mar = c(7,4,4,2) + 0.1)  
    hist(
      mydata$var,
      freq = FALSE,
      col = "chocolate",
      xlab = var,
      main = "Colored Histogram",
      breaks = seq(0, max(mydata$var), l = input$bin + 1)
      
    )
    # add a normal distribution line in histogram
    curve(dnorm(x,mean = mean(mydata$var), sd = sd(mydata$var)), add = TRUE, col = "red") 
    
  title(sub = summStr, line = 5.5)
  par(op)  
  
})



