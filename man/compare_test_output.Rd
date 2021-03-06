% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Testproject_Functions.R
\name{compare_test_output}
\alias{compare_test_output}
\title{Compare test project output database with reference database}
\usage{
compare_test_output(dir_test, dir_ref = NULL)
}
\arguments{
\item{dir_test}{A character string. Path to test project folder.}

\item{dir_ref}{A character string. Path to folder with reference database.}
}
\value{
A list with at least one element:\enumerate{
  \item The basename of the reference database; empty string if not found.
  \item The output from \code{\link{compare_two_dbOutput}}, if any.
}
}
\description{
Reference database is identified by containing \code{basename(dir_test)} in
the file name.
}
\examples{
\dontrun{
  # Run test project 4 inside development version of package
  # Assume that working directory is `tests/test_data/TestPrj4/`
  if (file.exists("SFSW2_project_code.R")) {
    source("SFSW2_project_code.R")

    # Compare output database with reference database
    comp <- compare_test_output(".", dir_ref = "../0_ReferenceOutput/")

    # Clean up
    delete_test_output(".")
  }
}

}
\seealso{
\code{\link{compare_two_dbOutput}}
}
