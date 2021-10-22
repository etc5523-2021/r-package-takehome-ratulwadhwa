#' Stain Colours
#' @examples
#' stain_colours
#' @rdname stain_colours
#' @export stain_colours
stain_colours <- list(
  "lemon"     = "#FCF404",
  "pink"      = "#EC3C7C",
  "teal"      = "#057277",
  "tan"       = "#9C8877",
  "skin"      = "#C9A58C",
  "wood"      = "#52292A"
)

#' stain palette
#'
#' @param primary
#' The default primary color of the stain palette is lemon(Yellow)
#' @param other
#' The Other color of the stain palette is wood(dark Brown)
#' @param direction
#' Sets the order of the colours in the scale. If 1, it gives the default order; if less than 0 the order of colours is reverse
#'
#' @return
#'  It will return corresponding hexcode of the colour name to the ggplot
#' @examples
#' stain_palette(primary = "lemon", other = "wood", direction = 1)(2)
#' stain_palette(primary = "lemon", other = "pink", direction = 1)(2)
#' @rdname stain_palette
#' @export
stain_palette <- function(
  primary = "lemon",
  other = "wood",
  direction = 1
) {
  stopifnot(primary %in% names(stain_colours))

  function(n) {
    if (n > 6) warning("n is larger than the number of colours in stain palette.")

    if (n == 2) {
      other <- if (!other %in% names(stain_colours)) {
        other
      } else {
        stain_colours[other]
      }
      color_list <- c(other, stain_colours[primary])
    } else {
      color_list <- stain_colours[1:n]
    }

    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}
