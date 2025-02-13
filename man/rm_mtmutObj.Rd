% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{rm_mtmutObj}
\alias{rm_mtmutObj}
\title{Remove mtmutObj object}
\usage{
rm_mtmutObj(x, envir = .GlobalEnv)
}
\arguments{
\item{x}{a mtmutObj object.}

\item{envir}{the environment where the mtmutObj object is stored.}
}
\value{
no return value.
}
\description{
This function closes the H5 file and remove mtmutObj object.
Because the H5 file is not closed automatically when the mtmutObj object is removed. We need to close the H5 file manually. By using this function, we can remove the mtmutObj object and close the H5 file at the same time.
}
\examples{
## Use the example data
f <- system.file("extdata", "mini_dataset.tsv.gz", package = "scMitoMut")
## Create a temporary h5 file
## In real case, we keep the h5 in project folder for future use
f_h5_tmp <- tempfile(fileext = ".h5")
## Load the data with parse_table function
f_h5 <- parse_table(f, sep = "\t", h5_file = f_h5_tmp)
f_h5
## open the h5 file and create a mtmutObj object
x <- open_h5_file(f_h5)
x
rm_mtmutObj(x)
}
