% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/curate_df.R
\name{move_columns}
\alias{move_columns}
\title{Sort specified columns to front of a data.frame}
\usage{
move_columns(names, df, reverse = F)
}
\arguments{
\item{names}{a char vector of current columns you want
to move to the front of the df}

\item{df}{which data frame to replace it in}

\item{reverse}{[not yet implemented] move named columns
to end of df.}
}
\value{
A df with rearranged columns
}
\description{
Sort specified columns to front of a data.frame
}
