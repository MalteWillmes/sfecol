#' @title sfecol
#' @description Color palettes based on the San Francisco Estuary
#' Complete list of palettes
#'
#' These are colour palettes derived from photos of birds native to New Zealand. Use \code{\link{get_pal}} extract palettes.
#'
#' @export
sfe_palettes <- list(
  Hihi = c("#070604", "#F9E211", "#797A87", "#A8ACAD", "#D6CBB5"),
  Hoiho = c("#CABEE9", "#7C7189", "#FAE093", "#D04E59", "#BC8E7D", "#2F3D70"),
  Kaka =  c("#A7473A", "#4B5F6C", "#B09B37", "#955F47", "#A8B9CB"),
  Kakapo = c("#7D9D33", "#CED38C", "#DCC949", "#BCA888", "#CD8862", "#775B24"),
  Kakariki =  c("#44781E", "#A1B654", "#2C3B75", "#B8321A", "#565052")
)

#' Select Manu palette
#'
#' This function returns colour palettes derived from photos of birds native to New Zealand
#'
#' @param name Name of desired palette. Choices are: \code{Hihi}, \code{Hoiho}, \code{Kaka}, \code{Kakariki}, \code{Kea}, \code{Kereru}, \code{Kereru_orig}, \code{Korimako}, \code{Korora}, \code{Kotare}, \code{Putangitangi}, \code{Takahe}, \code{Takapu}, \code{Titipounamu}, \code{Tui}, \code{Pepetuna}, \code{Gloomy_Nudi} and \code{Pohutukawa}
#'
#' @return A vector of colours.
#' @export
#' @examples
#' get_pal("Hoiho")
#' get_pal("Takahe")
#' get_pal("Kereru")
get_pal <- function(name) {

  pal <- sfe_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  pal
}

#' Plots a colour palette
#'
#' @param x a vector of colours
#' @export
#' @importFrom graphics par image
print_pal <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
}
