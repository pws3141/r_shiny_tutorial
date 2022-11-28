#! /usr/bin/env Rscript

#install.packages("shiny", repos='http://cran.us.r-project.org')

library(shiny)

# Define UI ----
ui <- fluidPage(
                titlePanel(h1("My Shiny App")),

                sidebarLayout(#position = "right"
                              sidebarPanel("sidebar panel"),
                              mainPanel(
                                        h1("Main Title", align = "center"),
                                        h2("Not quite as main title", align = "center"),
                                        h3("Even less main title", align = "center"),
                                        h4("Unmain title", align = "center"),
                                        h5("Completely unmain title", align = "center"),
                                        p("p creates a paragraph of text."),
                                        p("A new p() command starts a new paragraph.
                                          Supply a style attribute to change the
                                          format of the entire paragraph.", style =
                                          "font-family: 'times'; font-si16pt"),
                                        strong("strong() makes bold text."),
                                        em("em() creates italicized (i.e, emphasized) text."),
                                        br(),
                                        code("code displays your text similar to computer code"),
                                        div("div creates segments of text with a
                                            similar style. This division of text is
                                            all blue because I passed the argument
                                            'style = color:blue' to div",
                                            style = "color:blue"),
                                        br(),
                                        p("span does the same thing as div, but it works with",
                                        span("groups of words", style = "color:blue"),
                                        "that appear inside a paragraph."),
                                        img(src = "selfie.jpg", height = 400, width = 300)
                                        ),
                              )
                # sidebar layout guide: https://shiny.rstudio.com/articles/layout-guide.html
                )

# Define server logic ----
server <- function(input, output) {

}

# Run the app ----
shinyApp(ui = ui, server = server)
