#' Generate Swedish Names
#'
#' Generates a Swedish name using data on the one hundred most common female
#' first names, male first names, and last names in Sweden in 2020, according to
#' [Statistics Sweden](http://www.scb.se/be0001). The names are weighted by
#' frequency in the population. To generate a female name, set the `sex`
#' parameter to `f`, to generate a male name set it to `m`, and to generate a
#' name of either sex set it to `b`. Names can be returned as a character
#' string or as a list with a first name element and a last name element. This
#' behavior is set by the `return_separate_names` parameter.
#'
#' @param sex Selects the desired sex for the generated name. Set to `f`, `m`,
#'   or `b`. Defaults to `b`
#' @param return_separate_names Selects whether to return first and last names
#'   separate in a list. Defaults to `FALSE`.
#'
#' @return A character string or a list with a first and last name.
#' @export
#' @md
#'
#' @examples
#' common_sounding_swedish_name <- generate_swedish_name()
generate_swedish_name <- function(sex = 'b', return_separate_names = FALSE) {
  if (sex == 'b') {
    first_names <- female_first_names %>%
      dplyr::bind_rows(male_first_names) %>%
      dplyr::mutate(weight = weight / 2)
  } else if (sex == 'f') {
    first_names <- female_first_names
  } else if (sex == 'm') {
    first_names <- male_first_names
  } else {
    stop("Please set 'sex' to 'f' for female, 'm' for male, or 'b' for both.")
  }

  first_name <- sample(first_names$name, 1, prob = first_names$weight)

  last_name <- sample(last_names$name, 1, prob = last_names$weight)

  if (return_separate_names) {
    return(c(first_name %>% as.character(), last_name %>% as.character()))
  } else {
    return(paste(first_name, last_name))
  }
}
