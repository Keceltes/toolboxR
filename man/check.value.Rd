% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/counting_and_summarizing_tables.R
\name{check.value}
\alias{check.value}
\title{Check for explicit value in df}
\usage{
check.value(ids)
}
\arguments{
\item{X}{Search term}

\item{dat}{a lookup table data frame with both "id" and "field" columns}

\item{field}{the search column name}

\item{value}{the value to match}

\item{exclude}{return the inverse logical value.}

\item{unique_match}{If the combination of specified search terms return multiple
fields this function will return TRUE by default if ANY match
the supplied value. Specify unique_match = TRUE to require a
single field to be identified before comparison.}
}
\value{
logical
}
\description{
A helper function to build df-specific search tools.
These functions are typically used in conjunction with lapply to
determine if they are present in a df.
}
\details{
Important: since both the child function accepts multiple arguments (...) when
           it is built with multiple ids, you must explicitly refer to additional
           variables my name (dat, field, value). Without them the function
           returns NA even with valid queries.
}
\examples{
  df <- data.frame(Patient.ID = c("p1", "p1", "p2", "p2", "p3"),
                   Visit      = c(1,     2,    1,    2,    NA),
                   Test.Result= c("neg","pos","neg", NA,   "pos"),
                   stringsAsFactors = F)

  check_value_by_patient_id <- check.value("Patient.ID")
  check_value_by_patient_id("p1", dat = df, field = "Test.Result", value = "pos")
  # TRUE
  check_value_by_patient_id("p1", df, "Test.Result", "pos")
  # returns NA inappropriately
  check_value_by_patient_id("p2", dat = df, field = "Test.Result", value = "pos")
  # FALSE

  check_by_id_and_visit <- check.value(c("Patient.ID", "Visit"))
  check_by_id_and_visit("p2", 1, dat = df, field = "Test.Result", value = "pos")
  # FALSE
  check_by_id_and_visit("p3", NA, dat = df, field = "Test.Result", value = "pos")
  # NA
}
