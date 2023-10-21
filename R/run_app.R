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

  ui <- shiny::fluidPage(tag_test())

  server <- function(input,output,session) {

    cat("> conn ok?",DBI::dbCanConnect(odbc::odbc(), "local"))
  }

  shiny::shinyApp(ui,server)
}
