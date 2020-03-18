# Function to clean raw data from Minsteŕio da Saúde
clean_ms_data <- function(x){
  # clean names
  x <- janitor::clean_names(x)

  # remove summary data for regios
  x <- x %>% filter(abrangencia == "Unidade da Federação")

  # Fix state name
  state   <- str_split(string = x$nome, pattern = "\\(", simplify = TRUE)[,1]
  x$state <- trimws(state)

  state_ID   <-  str_split(string = x$nome, pattern = "\\(", simplify = TRUE)[,2]
  state_ID <- gsub(pattern = "\\)", replacement = "", x = state_ID)
  x$state_ID <- gsub(pattern = "\\*", replacement = "", x =  state_ID)

  x %>% select(date,
               state,
               state_ID,
               suspected_cases = casos_suspeitos,
               confirmed_cases = casos_confirmados,
               not_confirmed_cases = casos_descartados,
               deaths = obitos) -> x
  return(x)
}
