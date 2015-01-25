library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(

  # Application title
  headerPanel(
    list(tags$head(tags$style("body {background-color: grey;}")),
"Miles Per Gallon" 
)
),

  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear")),

    checkboxInput("outliers", "Show outliers", FALSE)
  ),

  mainPanel(
        p('The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)'),
	h3(textOutput("caption")),
    	plotOutput("mpgPlot",)
)
))
tomanix@tomanix-ub:~/Documentos/Cursos/Developing Data Products/Project$ cat ui.R 
library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(

  # Application title
  headerPanel(
    list(tags$head(tags$style("body {background-color: grey;}")),
"Miles Per Gallon" 
)
),

  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear")),

    checkboxInput("outliers", "Show outliers", FALSE)
  ),

  mainPanel(
        p('The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)'),
	h3(textOutput("caption")),
    	plotOutput("mpgPlot",)
)
))
