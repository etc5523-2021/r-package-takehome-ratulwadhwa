% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discrete-scale.R
\name{scale_color_stain_d}
\alias{scale_color_stain_d}
\title{Discrete color stain}
\usage{
scale_color_stain_d(primary = "lemon", other = "wood", direction = 1, ...)
}
\arguments{
\item{primary}{The default primary color name for the stain palette is "lemon"}

\item{other}{The default primary color name for the stain palette is "wood"}

\item{direction}{Sets the order of the colors in the scale. it gives the default order; if less than 0 the order of colours is reversed}

\item{...}{Other parameters that support the scale_color_discrete function}
}
\value{
It will return corresponding hexcode of the color name to the ggplot
}
\description{
Discrete color stain
}
\examples{
scale_color_stain_d(primary = "lemon", other = "wood", direction = 1)
scale_color_stain_d(primary = "lemon", other = "pink", direction = 1)
}
