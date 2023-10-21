devtools::load_all()
options(shiny.autoload.r = TRUE)
options(shiny.autoreload = TRUE)
run_app(config_file = "inst/config.yml")
