#' Spectral decomposition of orbital elements (Bretagnon 1974)
#'
#' Discrete Fourier representations of selected orbital elements from
#' Bretagnon (1974), expressed as \code{discreteSpectrum} objects compatible
#' with the \pkg{gtseries} package.
#'
#' @format A named list with two elements:
#' \describe{
#'   \item{epi}{A \code{discreteSpectrum} object containing the decomposition of
#'     the eccentricity term \eqn{e \sin\Pi}, where \eqn{e} is the orbital eccentricity
#'     and \eqn{\Pi} the longitude of perihelion.}
#'   \item{io}{A \code{discreteSpectrum} object containing the decomposition of
#'     the inclination term \eqn{\sin i \sin\Omega}, where \eqn{i} is the orbital
#'     inclination and \eqn{\Omega} the longitude of the ascending node. Note that,
#'     unlike the Laskar (1988) dataset, the inclination term is not halved.}
#' }
#'
#' @details
#' Frequencies are expressed in radians per year. Phases are expressed in radians
#' and referred to epoch 1950, following the original publication. No correction
#' for epoch alignment has been applied.
#'
#' @references
#' Bretagnon, P. (1974). \emph{Termes à longues périodes dans le système solaire}.
#' Astron. Astroph., 30, 141--154.
#'
#' @seealso  \href{https://github.com/mcrucifix/gtseries}{discreteSpectrum in gtseries}
#'
#' @examples
#' # Plot the eccentricity spectrum if gtseries is available
#' if (requireNamespace("gtseries", quietly = TRUE)) {
#'   plot(Bre73$epi)
#' }
"Bre73"

#' Spectral decomposition of orbital elements (Laskar 1988)
#'
#' Discrete Fourier representations of selected orbital elements from
#' Laskar (1988), expressed as \code{discreteSpectrum} objects compatible
#' with the \pkg{gtseries} package.
#'
#' @format A named list with two elements:
#' \describe{
#'   \item{epi}{A \code{discreteSpectrum} object containing the decomposition of
#'     the eccentricity term \eqn{e \sin\Pi}, where \eqn{e} is the orbital eccentricity
#'     and \eqn{\Pi} the longitude of perihelion.}
#'   \item{i2o}{A \code{discreteSpectrum} object containing the decomposition of
#'     the inclination term \eqn{\sin(i/2) \sin\Omega}, where \eqn{i} is the orbital
#'     inclination and \eqn{\Omega} the longitude of the ascending node.}
#' }
#'
#' @details
#' Frequencies are expressed in radians per year. Phases are expressed in radians
#' and referred to epoch 2000, following the original publication. No correction
#' for epoch alignment has been applied.
#'
#' Amplitudes were rescaled by a factor of \eqn{10^{-8}} relative to the original
#' tables in Laskar (1988), so that all terms are expressed in dimensionless units
#' consistent with \eqn{e} and \eqn{\sin(i/2)}.
#'
#' @references
#' Laskar, J. (1988). \emph{Secular evolution of the Solar System over 10 million years}.
#' Astrom. Astroph., 198, 341--362.
#'
#' @seealso  \href{https://github.com/mcrucifix/gtseries}{discreteSpectrum in gtseries}
#'
#' @examples
#' # Plot the eccentricity spectrum if gtseries is available
#' if (requireNamespace("gtseries", quietly = TRUE)) {
#'   plot(La88$epi)
#' }
"La88"


