% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/handle_click.R
\name{handle_click}
\alias{handle_click}
\alias{handle_hover}
\title{Handle mouse actions on marks.}
\usage{
handle_click(vis, on_click = NULL)

handle_hover(vis, on_mouse_over = NULL, on_mouse_out = NULL)
}
\arguments{
\item{vis}{Visualisation to listen to.}

\item{on_click, on_mouse_over}{Callback function with arguments:
\describe{
 \item{data}{A data frame with one row}
 \item{location}{A named list with components x and y}
 \item{session}{The session, used to communicate with the browser}
}}

\item{on_mouse_out}{Callback function with argument:
\describe{
 \item{session}{The session, used to communicate with the browser}
}}
}
\description{
Handle mouse actions on marks.
}
\examples{
location <- function(location, ...) cat(location$x, "x", location$y, "\\n")
mtcars \%>\% ggvis(~mpg, ~wt) \%>\% layer_points() \%>\%
  handle_click(location)
mtcars \%>\% ggvis(~mpg, ~wt) \%>\% layer_points() \%>\%
  handle_hover(function(...) cat("over\\n"), function(...) cat("off\\n"))
mtcars \%>\% ggvis(~mpg, ~wt) \%>\% layer_points() \%>\%
  handle_hover(function(data, ...) str(data))
}

