% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_layer_path.R
\name{add_path}
\alias{add_path}
\title{Add Path}
\usage{
add_path(map, data = get_map_data(map), polyline = NULL,
  stroke_colour = NULL, stroke_width = NULL, stroke_opacity = NULL,
  tooltip = NULL, layer_id, digits = 6, palette = viridisLite::viridis)
}
\arguments{
\item{map}{a mapdeck map object}

\item{data}{data to be used in the layer}

\item{polyline}{column of \code{data} containing the polylines}

\item{stroke_colour}{variable of \code{data} or hex colour for the stroke}

\item{stroke_width}{width of the stroke}

\item{stroke_opacity}{value between 1 and 255. Either a string specifying the
column of \code{data} containing the stroke opacity of each shape, or a value
between 1 and 255 to be applied to all the shapes}

\item{tooltip}{variable of \code{data} containing text or HTML to render as a tooltip}

\item{layer_id}{single value specifying an id for the layer. Use this value to
distinguish between shape layers of the same type}

\item{digits}{integer. Use this parameter to specify how many digits (decimal places)
should be used for the latitude / longitude coordinates.}

\item{palette}{a function which generates hex colours}
}
\description{
The Path Layer takes in lists of coordinate points and renders them as
extruded lines with mitering.
}
\examples{
\donttest{

## You need a valid access token from Mapbox
key <- 'abc'

mapdeck(
  token = key
  , style = 'mapbox://styles/mapbox/dark-v9'
  , location = c(145, -37.8)
  , zoom = 10) \%>\%
  add_path(
    data = roads
    , stroke_colour = "RIGHT_LOC"
    , layer_id = "path_layer"
    , tooltip = "ROAD_NAME"
  )

}

}
