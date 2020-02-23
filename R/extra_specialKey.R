#' Send special key input
#'
#' Send special keys, identical to \code{\link{rMouse::specialKey}} but with "CTRL" and "ALT" added
#'
#' @param key "ESC", "ENTER", "TAB", "CTRL", or "ALT" as string
#' @param failSafe Logical flag to allow for emergency stops. Default is TRUE
#'
#' @import rMouse
#' @export
#'
#' @examples
#' extra_specialKey("ALT")
#' extra_specialKey("CTRL")
#'
extra_specialKey <- function (key = "ESC", failSafe = TRUE) {
  stopifnot(key %in% c("ESC", "ENTER", "TAB", "CTRL", "ALT"))
  if (failSafe == TRUE && coord()$x == 0 && coord()$y == 0) {
    stop("Coord: 0,0 (Emergency Stop)")
  }
  if (key == "ESC") {
    VK_KeyCode <- 27
  }
  else if (key == "ENTER") {
    VK_KeyCode <- 10
  }
  else if (key == "TAB") {
    VK_KeyCode <- 9
  }
  else if (key == "CTRL"){
    VK_KeyCode <- 17
  }
  else if (key == 'ALT'){
    VK_KeyCode <- 18
  }
  else {
    VK_KeyCode <- 32
  }
  jRobot$keyPress(as.integer(VK_KeyCode))
  jRobot$keyRelease(as.integer(VK_KeyCode))
}
