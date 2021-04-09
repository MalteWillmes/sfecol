#' @title Color palettes based on the San Francisco Estuary.
#' @description This package provides color palettes based on images from the San Francisco Estuary. Use \code{\link{sfe_pal}} extract palettes.
#' Package based on the excellent manu package (https://g-thomson.github.io/Manu/) by Dr Tara McAllister and Karthik Ram
#' Complete list of palettes
#'
#'
#' @export
sfe_palettes <- list(
  delsme = c("#304247", "#D1D0B3", "#828D6D", "#8DBA71", "#92A2AF","#447484"),
  chinook = c("#899FBF", "#243158", "#543D4A", "#D8D9E4", "#715E4D", "#C0D5F0"),
  chinookcarc=  c("#CDC9C0", "#2B2F2A", "#837C32", "#727877", "#634933", "#A89C6B"),
  southbay =  c("#727467", "#97CFCB", "#D5A54C", "#1F2F3D", "#801F23", "#633F47"),
  baslu =  c("#6F7527", "#D0C56E", "#122006", "#AEB953","#3F2D0F","#9B9899"),
  elpastel =c('#4E79A7', '#F28E2B','#E15759','#76B7B2','#59A14F','#EDC948','#B07AA1','#FF9DA7','#9C755F','#BAB0AC')
)



#' Select SFE color palette
#'
#' This function returns color palettes derived from photos of the San Francisco Estuary.
#'
#' @param name Name of desired palette. Choices are: \code{delsme}, \code{chinook},  \code{chinookcarc}, \code{southbay},
#' \code{baslu}, \code{elpastel}
#'
#' @return A vector of colors.
#' @export
#' @examples
#' sfe_pal("delsme")
#' sfe_pal("chinook")
#' sfe_pal("chinookcarc")
#' sfe_pal("southbay")
#' sfe_pal("baslu")
#' sfe_pal("elpastel")
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
