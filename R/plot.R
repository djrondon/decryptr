#' Plot captcha
#'
#' @param x object
#' @param y -
#' @param ... other
#'
#' @export
plot.image_captcha <- function(x, y, ...) {
  # Get extention
  ext <- tolower(tools::file_ext(basename(x)))
  if (ext %in% c("jpeg", "jpg")) {
    graphics::plot(grDevices::as.raster(jpeg::readJPEG(x)))
  } else if (ext == "png") {
    graphics::plot(grDevices::as.raster(png::readPNG(x)))
  } else {
    stop("Wrong extension")
  }
}

#' Plot captcha
#'
#' @param x object
#' @param y -
#' @param ... other
#'
#' @export
plot.audio_captcha <- function(x, y, ...) {
  # Get extention
  ext <- tolower(tools::file_ext(basename(x)))
  if (ext %in% c("wav")) {
    graphics::plot(tuneR::readWave(x))
  } else {
    stop("Wrong extention")
  }
}