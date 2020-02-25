##########################################################################
#
# MSA disease progression 
# Descriptive statistics & Modeling
#
##########################################################################
# Text snippets for the Section 1
#########################################################################

##############################
#            ui 
##############################

#### Subsection 1 tab ######

sec1_subsec1_tab <- function(){
  div(
    column(
      width = 9,
      align = "center", 
      box(width=NULL, 
          align="center",
          background="light-blue",
          h1("Histograms",style="color:white"))),
    fluidRow(
      column(width = 9, 
             box(width = NULL, status="primary", solidHeader = TRUE, 
                 div(style = 'overflow-x: scroll', plotOutput('plot_histograms', height = "400px"))),
             box(width = NULL, solidHeader = TRUE, status="primary", 
                 div(style = 'overflow-x: scroll', dataTableOutput('table_histograms')))
      ),
      
      column(width=3,
             box(width = NULL, 
                 solidHeader = TRUE, status="primary", title = "Select the specie", 
                 
                 selectInput("specie", 
                             "Iris Specie",
                             choices=levels(iris$Species),
                             multiple=TRUE) 
             ), 
             box(width = NULL, solidHeader = TRUE, status = "primary", title = "Plot the histogram", 
                 selectInput("variable", "Select the attribute", choices = c("Petal Width"= "Petal.Width", "Petal Length" = "Petal.Length", 
                                                                      "Sepal Width" = "Sepal.Width", "Sepal Length" = "Sepal.Length")), 
                 
                 sliderInput("bin",
                             "Select the BIN width",
                             min = 10, 
                             max = 60,
                             value = 10,
                             step = 1)
            ),
             
             box(width= NULL, solidHeader = TRUE, status="primary", title="Use and Interpretation",
                 p(class="text", 
                   paste("
                         Visualize the histograms of each iris specie. 
                         ")),
                 p(class="text-muted", paste("Note:  This can be made more fancy"))
                 )
                   )
      ) 
  )
}

#### Subsection 2 tab ######
