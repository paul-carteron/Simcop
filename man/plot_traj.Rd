% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_traj.R
\name{plot_traj}
\alias{plot_traj}
\title{plot_traj}
\usage{
plot_traj(
  density_init = c(100, 200, 500, 1000, 2000, 5000),
  coeff_traj = c(a = 13.532, b = -1.461, a0 = 14.21, b0 = -1.79),
  scale = c(xmin = 15, xmax = 500, ymin = 50, ymax = 5000),
  ...,
  remove_theme = FALSE
)
}
\arguments{
\item{density_init}{A vector of initial densities (numeric)}

\item{coeff_traj}{Coefficient a, b, a0, and b0 of the mortality trajectory (cf : Ningre et al "Trajectoires d auto-eclaircie du Douglas en France)}

\item{scale}{A vector compose of xmin, xmax, ymin and ymax}

\item{...}{Param to give to th ggplot (color, linetype, alpha, ...)}

\item{remove_theme}{If TRUE, already created theme for the graph is remove}
}
\value{
A ggplot object
}
\description{
plot_traj
}
\examples{
\dontrun{plot_traj()}

}
