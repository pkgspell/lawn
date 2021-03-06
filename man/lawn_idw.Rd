% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/idw.R
\name{lawn_idw}
\alias{lawn_idw}
\title{IDW}
\usage{
lawn_idw(controlPoints, valueField, b, cellWidth, units = "kilometers",
  lint = FALSE)
}
\arguments{
\item{controlPoints}{A \link{data-FeatureCollection}, Sampled
points with known value}

\item{valueField}{(character) GeoJSON field containing the known value
to interpolate on}

\item{b}{(integer) Exponent regulating the distance-decay weighting}

\item{cellWidth}{(integer) The distance across each cell}

\item{units}{(character) used in calculating cellSize, can be degrees,
radians, miles, or kilometers}

\item{lint}{(logical) Lint or not. Uses geojsonhint. Takes up increasing time
as the object to get linted increases in size, so probably use by
default for small objects, but not for large if you know they are good geojson
objects. Default: \code{FALSE}}
}
\value{
a \link{data-FeatureCollection} containing the dissolved
polygons
}
\description{
Takes a FeatureCollection of points with known value, a power
parameter, a cell depth, a unit of measurement and returns a
FeatureCollection of polygons in a square-grid with an interpolated
value property "IDW" for each grid cell. It finds application when in
need of creating a continuous surface (i.e. rainfall, temperature,
chemical dispersion surface...) from a set of spatially scattered points.
}
\examples{
x <- '{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {
        "marker-color": "#7e7e7e",
        "marker-size": "medium",
        "marker-symbol": "",
        "value": 4,
        "id": 4
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          9.155731201171875,
          45.47216977418841
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-color": "#7e7e7e",
        "marker-size": "medium",
        "marker-symbol": "",
        "value": 99,
        "id": 2
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          9.195213317871094,
          45.53689620055365
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-color": "#7e7e7e",
        "marker-size": "medium",
        "marker-symbol": "",
        "value": 10,
        "id": 1
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          9.175300598144531,
          45.49912810913339
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-color": "#7e7e7e",
        "marker-size": "medium",
        "marker-symbol": "",
        "value": 6,
        "id": 3
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          9.231605529785156,
          45.49190839157102
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-color": "#7e7e7e",
        "marker-size": "medium",
        "marker-symbol": "",
        "value": 7,
        "id": 5
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          9.116249084472656,
          45.4391764115696
        ]
      }
    }
  ]
}'
lawn_idw(x, 'value', 0.5, 1)
}
