#' list_module
#'
#' A module where, given a pandora entity type, a row-wise list of IDs will be printed for screen. Useful for fast look up of certain IDs.
#' 
#' @param con a pandora connection from sidora.core
#' @param entity_type a pandora table to the generate a list of IDs from. Options: site,
#' @param entity_id test
#' @param filter_entity_type test
#' @param filter_string test
#' @param cache_dir location of your cache directory.
#' 
#' @export
list_module <- function(
  con = sidora.core::get_pandora_connection(),
  entity_type,
  entity_id = c(),
  filter_entity_type = NA,
  filter_string = NA,
  cache_dir = "~/.sidora"
) {
  
  # if (entity_type %in% sidora.core::pandora_tables_restricted) {
  #   
  #   table <- sidora.core::access_restricted_table(con, entity_id = tab_info)
  #   
  # } else {
  #   table <- sidora.core::get_df(con, 
  #                                tab = tab_info$pandora_table, 
  #                                cache_dir = cache_dir)
  # }

  tabulate_module(
    con = con,
    entity_type = entity_type,
    entity_id = entity_id,
    filter_entity_type = filter_entity_type,
    filter_string = filter_string,
    as_tsv = F,
    as_id_list = T,
    cache_dir = cache_dir
  )

}
