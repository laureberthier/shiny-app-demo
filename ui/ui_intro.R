##########################################################################
#
# Shiny Interactive Web App  
# Using the Iris data 
#
##########################################################################
# Text snippets for the Introduction
#########################################################################

##############################
#            ui 
##############################

####### info tab #############

intro_info_tab <- function(){ 
div(
  column(
    width = 12,
    align = "center", 
    box(width=NULL, 
        align="center",
        background="light-blue",
        h1("Information",style="color:white"))), 
  fluidRow(column(width = 12, 
         box(width = NULL, status="primary", solidHeader = TRUE, 
             h1("Iris App", style = "color:#888888", align = "center"),
             h2("Interactive Shiny Web App to explore the Iris data", style = 
                  "color:#888888", align = "center"),
             h3("Aim"),
             br(),
             p(class="text", 
               "Explore the Iris data interactively and showcase an example of Shiny App. 
                 ", style = "font-size: 16px;"),
             br(),
             h3("Users"),
             br(),
             p(class="text", 
               "For me and those who are interested.
               ", style = "font-size: 16px;"),
             br(),
             h3("Data"),
             br(),
             p(class="text", 
               "[The famous Iris flower data set](https://en.wikipedia.org/wiki/Iris_flower_data_set) 
               contains data to quantify the morphologic variation of Iris flowers of three related species. 
               In other words - A total of 150 observations of 4 input features `Sepal.Length`, `Sepal.Width`, 
               `Petal.Length` and `Petal.Width` and 3 output classes `setosa` `versicolor` and `virginica`, 
               with 50 observations in each class. ", style = "font-size: 16px;"),
             br(),
             h3("Visualizations"),
             br(),
             p(class="text", 
               "Bla bla", style = "font-size: 16px;"),
             br(),
             h3("Workflow"),
             p(class="text", 
               "More details on the workflow the user should follow can be found in the Introduction under the Workflow subitem.", 
               style = "font-size: 16px;"),
             br(),
             h3("Questions"),
             br(),
             p(class="text", 
               "For questions or requests, do not hesitate to contact: Laure.", 
               style = "font-size: 16px;")
             ,
             br(),
             br()
             
             ))
         
         )
)
  
}


####### workflow tab #########

intro_workflow_tab <- function(){ 
  div(
  column(
    width = 12,
    align = "center", 
    box(width=NULL, 
        align="center",
        background="light-blue",
        h1("Workflow",style="color:white"))), 
  column(width = 12, 
         box(width = NULL, status="primary", solidHeader = TRUE, 
             h2("Workflow", style = "font-weight: bold;"),
             br(),
             p("This is an introductory page on the recommended workflow for using this tool efficiently.", 
               style = "font-size: 16px; "),
             br(), br(),
             p(strong("1. Introduction:"), "The tool opens the start page by default. Read the start page carefully
               as it describes the aim of the App, the data source used and who
               to contact in case you have questions or comments. " ,
               style = "font-size: 16px; "),
             br(),
             p(strong("2. Visualizations:"), "Explore the different visualization pages by clicking on the left of the page 
               on the different tabs." ,
               style = "font-size: 16px; ")

             )
         
         
         
         
         )
  )
}
