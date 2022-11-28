library(shiny)

ui <- fluidPage(
        titlePanel("censusVis"),

        sidebarPanel(
                     helpText("Create denographics maps with information from the
                              2010 US Census"),
                     selectInput("var",
                                 label = "Choose a variable to display",
                                  choices = list(
                                               "Percent White",
                                               "Percent Black",
                                               "Percent Hispanic"
                                               ),
                                  selected = "Percent White"
                     ),
                     sliderInput("range",
                                 label = "Range of interest:",
                                 min = 0, max = 100, value = c(25, 75))
          ),

     mainPanel(
               textOutput("selected_var"),
               textOutput("min_max")
               )
     )

server <- function(input, output) {

        output$selected_var <- renderText({
                paste(sprintf("You have selected %s", input$var))
        })

        output$min_max <- renderText({
                paste(sprintf("The minimum value is %d and the maximum is %d",
                              input$range[1], input$range[2]))
        })


}

shinyApp(ui = ui, server = server)
