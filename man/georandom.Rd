% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geojson_random.R
\name{georandom}
\alias{georandom}
\alias{gr_point}
\alias{gr_position}
\alias{gr_polygon}
\title{Return a FeatureCollection with N number of features with
random coordinates}
\usage{
gr_point(n = 10, bbox = NULL)

gr_position(bbox = NULL)

gr_polygon(n = 1, vertices = 10, max_radial_length = 10, bbox = NULL)
}
\arguments{
\item{n}{(integer) Number of features to create. Default: 10 (points),
1 (polygons)}

\item{bbox}{(numeric) A bounding box of length 4, of the form west, south,
east, north order. By default, no bounding box is passed in.}

\item{vertices}{(integer) Number coordinates each Polygon will contain.
Default: 10}

\item{max_radial_length}{(integer) Maximum number of decimal degrees
latitude or longitude that a vertex can reach out of the center of the
Polygon. Default: 10}
}
\value{
A \link{data-FeatureCollection} for point and polygon, or numeric
vector for position.
}
\description{
Return a FeatureCollection with N number of features with
random coordinates
}
\details{
These functions create either random points, polygons, or
positions (single long/lat coordinate pairs).
}
\examples{
# Random points
gr_point(5)
gr_point(10)
gr_point(1000)
## with bounding box
gr_point(5, c(50, 50, 60, 60))

# Random positions
gr_position()
## with bounding box
gr_position(c(0, 0, 10, 10))

# Random polygons
## number of polygons, default is 1 polygon
gr_polygon()
gr_polygon(5)
## number of vertices, 3 vs. 100
gr_polygon(1, 3)
gr_polygon(1, 100)
## max radial length, compare the following three
gr_polygon(1, 10, 5)
gr_polygon(1, 10, 30)
gr_polygon(1, 10, 100)
## use a bounding box
gr_polygon(1, 5, 5, c(50, 50, 60, 60))
}
\references{
\url{https://github.com/mapbox/geojson-random}
}
\seealso{
\link{lawn_random}
}
