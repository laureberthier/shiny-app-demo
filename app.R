##########################################################################
#
# Shiny Interactive Web App
# Using the Iris data 
#
##########################################################################

# Install and load packages 
if (!require(shiny)) {install.packages("shiny")}
if (!require(shinythemes)) {install.packages("shinythemes")}
if (!require(shinydashboard)) {install.packages("shinydashboard")}
if (!require(DT)) {install.packages("DT")}

library(shiny)
library(shinythemes)
library(shinydashboard)
library(DT)
library(leaflet)
library(dplyr)
library(tidyr)
library(ggplot2)
library(tidyr)
library(magrittr)


# Import Iris Data 
data <- iris
data$Species <- as.factor(data$Species)

# Import ui snippets
source("ui/ui_intro.R") 
source("ui/ui_sec1.R") 


############# anchor #####################
anchor <- tags$a(tags$img(src='logo.png', class='navbar-brand',height = "30px"),
                 'Iris Shiny App',style="color:white")

########### header ###############
header <- dashboardHeader(
  
  tags$li(a(href = 'http://www.lundbeck.com',
            img(src = 'lundbeck_logo.png',
                title = "Lundbeck Home", height = "30px"),
            style = "padding-top:10px; padding-bottom:10px;"),
          class = "dropdown")
  
  
)
header$children[[2]]$children <- tags$div(
  anchor,
  class = 'name')

####### dashboard #############
dashboard <-  dashboardSidebar(width = 300, collapsed = FALSE,            # UI sidebar
                               sidebarMenu(menuItem("Introduction", tabName = "introduction", startExpanded = TRUE, # Intro
                                                    menuSubItem("Information", tabName = "intro_info", selected = TRUE),
                                                    menuSubItem("Workflow", tabName = "intro_workflow")),
                                           menuItem("Visualizations",tabName = "section1",
                                                    menuSubItem("Histograms",tabName = "sec1_subsec1"))
                                           
                               ))

######### body ##############
body <-       dashboardBody(
  tabItems(
    tabItem(tabName = "introduction"),  
    tabItem(tabName = "intro_info", intro_info_tab()),
    tabItem(tabName = "intro_workflow", intro_workflow_tab()), 
    tabItem(tabName = "section1"),
    tabItem(tabName = "sec1_subsec1", sec1_subsec1_tab())
  )
)

######### ui ##############

ui <- dashboardPage(
  
  skin="blue",
  
  header,
  
  dashboard,
  
  body
  
)

######### server ##############

server <- function(input, output, session) {
  
  # Section 1 
  source("server/server_sec1.R",  local = TRUE)$value
  
  
}

##### Run the application #########
shinyApp(ui = ui, server = server)