devtools::load_all()
options(shiny.autoload.r = TRUE)
options(shiny.autoreload = TRUE)
# looks for app.R in project root
shiny::runApp()
