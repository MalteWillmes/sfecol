#' @title Color palettes based on the San Francisco Estuary.
#' @description This package provides color palettes based on images from the San Francisco Estuary. Use \code{\link{sfe_pal}} extract palettes.
#' Package based on the excellent manu package (https://g-thomson.github.io/Manu/) by Dr Tara McAllister and Karthik Ram
#' Complete list of palettes
#'
#'
#' @export
sfe_palettes <- list(
  delsme = c("#304247", "#D1D0B3", "#828D6D", "#8DBA71", "#92A2AF"),
  chinook = c("#8AA0BF", "#243158", "#543D4A", "#D8D9E4", "#715E4D"),
  chinookcarc=  c("#C8C3B5", "#2B2F2A", "#837C32", "#727877", "#634933"),
  southbay =  c("#727467", "#97CFCB", "#D5A54C", "#1F2F3D", "#801F23"),
  baslu =  c("#6D7126", "#D0C56E", "#122006", "#AEB953", "#9B9899")
)

#' Select SFE color palette
#'
#' This function returns color palettes derived from photos of the San Francisco Estuary.
#'
#' @param name Name of desired palette. Choices are: \code{delsme}, \code{chinook},  \code{chinookcarc}, \code{southbay},
#' \code{baslu}
#'
#' @return A vector of colors.
#' @export
#' @examples
#' sfe_pal("delsme")
#' sfe_pal("chinook")
#' sfe_pal("chinookcarc")
#' sfe_pal("southbay")
#' sfe_pal("baslu")
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



