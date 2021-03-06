% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/string.R
\name{format_dates}
\alias{format_dates}
\title{Automated date parsing from mixed vector of strings}
\usage{
format_dates(x, input.order = "dmy", output.format = "\%Y-\%m-\%d",
  default = "keep")
}
\arguments{
\item{input.order}{Character string designating what order the input string
currently exist. Possible values= "dmy", "ymd", and "mdy". Additional symbols
are ignored (2017-10-31 == 2017/10/31 == 20171031)}

\item{output.format}{Character string passed to format function to specify desired output}

\item{default}{Non-NULL character to return if unable to parse date. Specifying
default = "keep" will retain the unchanged original value.}
}
\value{
character vector of parsable dates in format *output.format*
}
\description{
This function will attempt to match each string value
to an appropriate date and export harmonized string format.
Currently it is limited to recognizing mixtures of Excel
integer dates and string dates formatted in a single specified
order (e.g. mdy for month-day-year).
}
