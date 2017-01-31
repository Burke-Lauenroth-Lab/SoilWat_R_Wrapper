% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SWSF_Spatial_Functions.R
\name{align_with_target_grid}
\alias{align_with_target_grid}
\title{Aligns 'grid_from' with 'grid_to' for certain cells}
\usage{
align_with_target_grid(grid_from, coords, grid_to, crs_to = NULL)
}
\arguments{
\item{grid_from}{A RasterLayer object.}

\item{coords}{A matrix of x and y coordinates, or a SpatialPoints or
SpatialPointsDataFrame object indicating which cells of projected 'grid_from' will
be used.}

\item{grid_to}{A RasterLayer object.}

\item{crs_to}{A CRS object or \code{NULL} in which case it will be extracted from
\code{grid_to}.}
}
\value{
A list with two elements
 \describe{
   \item{x}{A RasterLayer object. Cells values are \code{NA} or 1 if they contain
     graphics::points of \code{coords}.}
   \item{index}{An integer vector. The cell numbers of \code{x} that correspond to
     \code{coords}.}
}
}
\description{
Aligns 'grid_from' with 'grid_to' for certain cells
}