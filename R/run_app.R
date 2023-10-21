#' Run application
#'
#' @return shiny object
#' @export
#'
run_app <- function(config_file) {

  conn <- DBI::dbConnect(
    drv = odbc::odbc(),
    dsn = config::get(
      file = config_file,
      value = "database",
      config = "local"))

  ui <- fluidPage(mod_example_ui("mod_example"))

  server <- function(input,output,session) {

    mod_example_server(id = "mod_example", conn = conn)

  }

  shinyApp(ui,server)
}
