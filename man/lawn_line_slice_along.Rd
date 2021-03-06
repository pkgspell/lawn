% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/line_slice_along.R
\name{lawn_line_slice_along}
\alias{lawn_line_slice_along}
\title{Slice a line given two points}
\usage{
lawn_line_slice_along(startDist, stopDist, line, units = "kilometers",
  lint = FALSE)
}
\arguments{
\item{startDist}{distance along the line to starting point}

\item{stopDist}{distance along the line to ending point}

\item{line}{Line to slice, a \link{data-LineString}}

\item{units}{can be degrees, radians, miles, or kilometers (default)}

\item{lint}{(logical) Lint or not. Uses geojsonhint. Takes up increasing time
as the object to get linted increases in size, so probably use by
default for small objects, but not for large if you know they are good geojson
objects. Default: \code{FALSE}}
}
\value{
A \link{data-LineString}, the sliced line
}
\description{
Takes a line, a specified distance along the line to a start Point, and
a specified distance along the line to a stop point and returns a
subsection of the line in-between those points. This can be useful for
extracting only the part of a route between two distances.
}
\examples{
line <- '{
  "type": "Feature",
  "properties": {},
  "geometry": {
    "type": "LineString",
    "coordinates": [
      [ 7.66845703125, 45.058001435398296 ],
      [ 9.20654296875, 45.460130637921004 ],
      [ 11.348876953125, 44.48866833139467 ],
      [ 12.1728515625, 45.43700828867389 ],
      [ 12.535400390625, 43.98491011404692 ],
      [ 12.425537109375, 41.86956082699455 ],
      [ 14.2437744140625, 40.83874913796459 ],
      [ 14.765625, 40.681679458715635 ]
    ]
  }
}'
lawn_line_slice_along(12.5, 25, line)
\dontrun{
line \%>\% view
lawn_line_slice_along(12.5, 25, line) \%>\% view
}
}
