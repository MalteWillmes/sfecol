#' @title Color palettes based on the San Francisco Estuary.
#' @description This package provides color palettes based on images from the San Francisco Estuary. Use \code{\link{sfe_pal}} extract palettes.
#' Package based on the excellent manu package (https://g-thomson.github.io/Manu/) by Dr Tara McAllister and Karthik Ram
#' Complete list of palettes
#'
#'
#' @export
sfe_palettes <- list(
  delsme = c("#00010D", "#0D2340", "#3E5659", "#91BF2C", "#F2F2F2"),
  chinook = c("#423A88", "#1C3966", "#4B6F93", "#D3D3DF", "#40241A"),
  chinookcarc=  c("#375773", "#ABB151", "#312F54", "#C5B9AB", "#BF7E04"),
  southbay =  c("#8A2630", "#283645", "#A5DDE8", "#77AE9B", "#D18C30"),
  baslu =  c("#062601", "#788C2E", "#D6D97E", "#BF7E04","#734002")
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
