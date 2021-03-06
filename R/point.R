#' Create a point
#'
#' @export
#' @param coordinates A pair of points in a vector, list or json, of the form
#' \code{e.g., c(longitude,latitude)}.
#' @param properties A list of properties. Default: NULL
#' @family data functions
#' @return A [data-Point] feature.
#' @examples
#' lawn_point(c(-74.5, 40))
#' lawn_point(list(-74.5, 40))
#' lawn_point('[-74.5, 40]')
#' lawn_point(c(-74.5, 40), properties = list(name = 'poly1', population = 400))
#'
#' # Make a FeatureCollection
#' lawn_featurecollection(lawn_point(c(-74.5, 40)))
lawn_point <- function(coordinates, properties = NULL) {
  ct$eval(sprintf("var pt = turf.point(%s, %s);",
                  convert(coordinates), toj(properties)))
  structure(ct$get("pt"), class = "point")
}
