#' Release special key input
#'
#' Takes special key input and releases it
#'
#' @param key "CTRL" or "ALT" as string
#' @param failSafe Logical flag to allow for emergency stops. Default is TRUE
#'
#' @import rJava
#' @import rMouse
#' @export
#'
#' @examples
#' rMouse::type("text to copy"); hold_specialKey("CTRL"); rMouse::type("ac"); release_specialKey("CTRL")
#'
release_specialKey <- function (key = "CTRL", failSafe = TRUE) {
  stopifnot(key %in% c("CTRL", "ALT"))
  if (failSafe == TRUE && coord()$x == 0 && coord()$y == 0) {
    stop("Coord: 0,0 (Emergency Stop)")
  }
  if (key == "CTRL"){
    VK_KeyCode <- 17
  }
  else if (key == 'ALT'){
    VK_KeyCode <- 18
  }
  else {
    VK_KeyCode <- 32
  }
  jRobot$keyRelease(as.integer(VK_KeyCode))
}

