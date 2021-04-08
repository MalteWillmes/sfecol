#' @title sfecol
#' @description Color palettes based on the San Francisco Estuary. Use \code{\link{get_pal}} extract palettes.
#' Package based on the excellent manu package (https://g-thomson.github.io/Manu/) by Dr Tara McAllister and Karthik Ram
#' Complete list of palettes
#'
#'
#' @export
sfe_palettes <- list(
  delsme = c("#304247", "#D1D0B3", "#828D6D", "#8DBA71", "#92A2AF"),
  chinook = c("#CABEE9", "#7C7189", "#FAE093", "#D04E59", "#BC8E7D", "#2F3D70"),
  chinookcarc=  c("#C8C3B5", "#2B2F2A", "#837C32", "#727877", "#634933"),
  southbay =  c("#A7473A", "#4B5F6C", "#B09B37", "#955F47", "#A8B9CB")
)

#' Select SFE color palette
#'
#' This function returns color palettes derived from photos of the San Francisco Estuary and its wildlife
#'
#' @param name Name of desired palette. Choices are: \code{delsme}, \code{chinook},  \code{chinookcarc}, and \code{southbay}
#'
#' @return A vector of colors.
#' @export
#' @examples
#' get_pal("delsme")
#' get_pal("chinook")
#' get_pal("chinookcarc")
#' get_pal("southbay")
#'
sfe_pal <- function(name) {

  pal <- sfe_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  pal
}

#' Plots a color palette
#'
#' @param x a vector of colors
#' @export
#' @importFrom graphics par image
print_pal <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
}
