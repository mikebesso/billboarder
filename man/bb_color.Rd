% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bb_utils.R
\name{bb_color}
\alias{bb_color}
\title{Color property for a Billboard.js chart}
\usage{
bb_color(bb, palette = NULL, ...)
}
\arguments{
\item{bb}{A \code{billboard} \code{htmlwidget} object.}

\item{palette}{A color palette to use with series added in the chart.}

\item{...}{See \url{https://naver.github.io/billboard.js/release/latest/doc/Options.html#.color}}
}
\value{
A \code{billboard} \code{htmlwidget} object.
}
\description{
Color property for a Billboard.js chart
}
\examples{

library("RColorBrewer")

# Scatter
billboarder() \%>\% 
  bb_scatterplot(data = iris, x = "Sepal.Length", y = "Sepal.Width", group = "Species") \%>\% 
  bb_axis(x = list(tick = list(fit = FALSE))) \%>\% 
  bb_point(r = 8) \%>\% 
  bb_color(palette = brewer.pal(n = 3, name = "Reds"))

# Pie
stars <- data.frame(
  package = c("billboarder", "ggiraph", "officer", "shinyWidgets", "visNetwork"),
  stars = c(9, 177, 43, 44, 169)
)
cols <- brewer.pal(n = 5, name = "Dark2")

billboarder() \%>\%
  bb_piechart(data = stars) \%>\%
  bb_color(palette = brewer.pal(n = 5, name = "Reds"))

}
