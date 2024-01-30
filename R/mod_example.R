mod_example_ui <- function(id) {
  ns <- NS(id)
  htmltools::h1("mod_example")
}

mod_example_server <- function(id) {
  moduleServer(
    id,
    function(input,output,session) {

      # pool::dbGetQuery(pool, "SELECT name FROM SYS.TABLES")

    }
  )
}
