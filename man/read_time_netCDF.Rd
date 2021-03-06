% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExtractData_ClimateDownscaling.R
\name{read_time_netCDF}
\alias{read_time_netCDF}
\title{Read and interpret time dimension of a \var{netCDF} file with \acronym{CF} 1 or larger}
\usage{
read_time_netCDF(filename, tres = c("monthly", "daily"))
}
\arguments{
\item{filename}{A character string, the name of a \var{netCDF} file; or,
the result of \code{\link[ncdf4]{nc_open}}.}

\item{tres}{A character string. The temporal resolution (time step).}
}
\value{
A list with six elements:
 \describe{
   \item{calendar}{The calendar type, see
     \href{http://cfconventions.org/cf-conventions/v1.6.0/cf-conventions.html#calendar}{CF-conventions}.}
   \item{unit}{The units of the time dimension, see
     \href{http://cfconventions.org/cf-conventions/v1.6.0/cf-conventions.html#time-coordinate}{CF-conventions}.}
   \item{N}{The number of steps along the time dimension.}
   \item{base}{The start date of the time dimension.}
   \item{start}{A numeric vector representing the first date with named elements
     \var{\dQuote{year}} and \var{\dQuote{month}}.}
   \item{end}{A numeric vector representing the last date with named elements
     \var{\dQuote{year}} and \var{\dQuote{month}}.}
 }
}
\description{
Read and interpret time dimension of a \var{netCDF} file with \acronym{CF} 1 or larger
}
