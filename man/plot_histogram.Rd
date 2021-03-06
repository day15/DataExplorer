% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_histogram.r
\name{plot_histogram}
\alias{plot_histogram}
\alias{HistogramContinuous}
\title{Create histogram for continuous features}
\usage{
plot_histogram(data, title = NULL, ggtheme = theme_gray(),
  theme_config = list(), ...)
}
\arguments{
\item{data}{input data}

\item{title}{plot title}

\item{ggtheme}{complete ggplot2 themes. The default is \link{theme_gray}.}

\item{theme_config}{a list of configurations to be passed to \link{theme}.}

\item{\dots}{other arguments to be passed to \link{geom_histogram}.}
}
\description{
This function creates histogram for each continuous feature.
}
\details{
To change default font family and size, you may pass \code{base_size} and \code{base_family} to \code{ggtheme} options, e.g., \code{ggtheme = theme_gray(base_size = 15, base_family = "serif")}

\code{theme_config} argument expects all inputs to be wrapped in a list object, e.g., to change the text color: \code{theme_config = list("text" = element_text(color = "blue"))}
}
\examples{
# Plot iris data
plot_histogram(iris)

# Plot random data with customized geom_histogram settings
set.seed(1)
data <- cbind(sapply(seq.int(4L), function(x) {rnorm(1000, sd = 30 * x)}))
plot_histogram(data, breaks = seq(-400, 400, length = 50))

# Plot histogram with preset ggplot2 themes
library(ggplot2)
plot_histogram(data, ggtheme = theme_light())
plot_histogram(data, ggtheme = theme_minimal(base_size = 15))

# Plot histogram with customized theme components
plot_histogram(data,
theme_config = list(
  "plot.background" = element_rect(fill = "yellow"),
  "aspect.ratio" = 1
))
}
\seealso{
\link{geom_histogram} \link{plot_density}
}
\keyword{plot_histogram}
