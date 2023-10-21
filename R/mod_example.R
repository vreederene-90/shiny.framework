mod_example_ui <- function(id) {
  ns <- NS(id)
  htmltools::h1("mod_example")
}

mod_example_server <- function(id,conn) {
  moduleServer(
    id,
    function(input,output,session) {

      print(DBI::dbGetQuery(conn, "SELECT * FROM SYS.TABLES"))

    }
  )
}
