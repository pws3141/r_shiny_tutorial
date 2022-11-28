#! /usr/bin/env Rscript

#install.packages("shiny", repos='http://cran.us.r-project.org')

library(shiny)

# Define UI ----
ui <- fluidPage(
                titlePanel(h1("My Shiny App")),

                sidebarLayout(#position = "right"
                              sidebarPanel(
                                           h1("Installation"),
                                           p("Shiny is available on CRAN, so you can
                                             install it in the usual way from your R
                                             console"),
                                           code("install.package(\"shiny\")"),
                                           br(),
                                           br(),
                                           img(src = "rstudio.png", height = 70, width = 200),
                                           p("Shiny is a product of", 
                                             span("RStudio", style = "color:blue"))
                                           ),
                              mainPanel(
                                        h1("Introducing Shiny"),
                                        p("Shiny is a package from RStudio that makes it",
                                          em("incredibly"),
                                          "easy to build interactive web applications with R"),
                                        br(),
                                        p("For an introduction and live examples, visit the",
                                          a("Shiny homepage", href = "http://shiny.rstudio.com"), 
                                          "."),
                                        br(),
                                        br(),
                                        h2("Features"),
                                        p("- Build useful web applications with ouly
                                          a few lines of code -- no JavaScript
                                          required."),
                                        p("- Shiny applications are automatically
                                          'live' in the same way that ",
                                          strong("spreadsheets"),
                                          " are live. Outputs change instantly as
                                          users modify inputs, without requiring a
                                          reload of the browser")
                                        ),
                              )
                # sidebar layout guide: https://shiny.rstudio.com/articles/layout-guide.html
                )

# Define server logic ----
server <- function(input, output) {

}

# Run the app ----
shinyApp(ui = ui, server = server)
