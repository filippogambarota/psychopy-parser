require(XML)
require(purrr)

xmldata <- XML::xmlParse("exp/face_sim_masking_el_2f.psyexp")
xmldata <- XML::xmlToList(xmldata)

routine_names <- get_routine_names(xmldata$Routines)
flow_names <- get_flow_names(xmldata$Flow)

routines <- rename_routines(xmldata$Routines, routine_names)
