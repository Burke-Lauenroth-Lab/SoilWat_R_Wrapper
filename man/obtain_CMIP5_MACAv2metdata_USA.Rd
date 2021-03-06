% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExtractData_ClimateDownscaling.R
\name{obtain_CMIP5_MACAv2metdata_USA}
\alias{obtain_CMIP5_MACAv2metdata_USA}
\title{Check and prepare local copy of \var{CMIP5_MACAv2metdata} dataset}
\usage{
obtain_CMIP5_MACAv2metdata_USA(locations, dir_ex_fut)
}
\arguments{
\item{locations}{A data frame. Two columns \code{X_WGS84} and
\code{Y_WGS84} of locations describe rectangle
for which data will be downloaded.}

\item{dir_ex_fut}{A character string. The path name to future climate
projections.}
}
\value{
If all files are available, then a message is printed to the
 R console with that information. Otherwise, the message points to a
 \var{.sh} script that was created at the
 \code{MACAv2metdata_USA} sub-folder. This script must be run
 separately to download the missing files.
}
\description{
Check and prepare local copy of \var{CMIP5_MACAv2metdata} dataset
}
\section{Notes}{
 The download scripts use \var{wget}, i.e., it must be
  available on your system to work. The scripts are based on the dataset
  repository setup at
  \url{https://climate.northwestknowledge.net/MACA/index.php} as of
  Dec 2019. This dataset has been bias corrected against \var{gridMET}.
}

\examples{
if (exists("SFSW2_prj_meta") && exists("SFSW2_prj_inputs")) {
  obtain_CMIP5_MACAv2metdata_USA(
    locations =
      SFSW2_prj_inputs[["SWRunInformation"]][, c("X_WGS84", "Y_WGS84")],
    dir_ex_fut = SFSW2_prj_meta[["project_paths"]][["dir_ex_fut"]],
  )
}

}
\references{
Abatzoglou, J. T. (2013) Development of gridded surface
  meteorological data for ecological applications and modelling.
  \var{Int. J. Climatol.}, 33: 121–131.
}
