% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Spatial_Functions.R
\name{weighted.agg}
\alias{weighted.agg}
\title{The 'weighted mean' (and sample quantiles) of re-aggregation output}
\usage{
weighted.agg(reagg, probs = NA)
}
\arguments{
\item{reagg}{A list. The output object of a call to \code{reaggregate_raster}
or to \code{reaggregate_shapefile}.}

\item{probs}{A numeric vector of probabilities with values in \code{[0, 1]}
at which sample quantiles are returned or \code{NA}.}
}
\value{
An array. The first dimension corresponds to each rectangle, i.e., a
  row of \code{coords}; the second dimension corresponds to the layers of the
  re-aggregated and -sampled Raster* object \code{x}; And the third dimension
  corresponds to the aggregation type(s) (weighted mean, and sample quantiles
  if any).
}
\description{
The 'weighted mean' (and sample quantiles) of re-aggregation output
}
