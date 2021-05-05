# Extract Routine Name

get_name <- function(routine){
  out <- routine[".attrs"]
  out <- unlist(unname(out))
  return(out)
}

get_routine_names <- function(routine_list){
  out <- purrr::map_chr(routine_list, get_name)
  out <- unname(out)
  return(out)
}

get_flow_names <- function(flow_list){
  
  out <- map_chr(flow_list, function(x){
    ifelse(is.list(x), x$.attrs[2], x)
  })
  
  return(unname(out))
}

rename_routines <- function(routine_list, routine_names){
  out <- routine_list
  names(out) <- routine_names
  return(out)
}
