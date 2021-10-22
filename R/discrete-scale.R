#' Discrete colour stain
#'
#' @param primary
#' The default primary color name for the stain palette is "lemon"
#' @param other
#' The default primary color name for the stain palette is "wood"
#' @param direction
#' Sets the order of the colours in the scale. If 1, it gives the default order; if less than 0 the order of colours is reversed
#' @param ...
#' Other parameters that support the scale_colour_discrete function
#'
#' @return
#' It will return corresponding hexcode of the colour name to the ggplot
#' @examples
#' scale_colour_stain_d(primary = "lemon", other = "wood", direction = 1)
#' scale_colour_stain_d(primary = "lemon", other = "pink", direction = 1)
#' @rdname scale_colour_stain_d
#' @export
scale_colour_stain_d <- function(
  primary = "lemon",
  other = "wood",
  direction = 1,
  ...
) {
  ggplot2::discrete_scale(
    "colour", "stain",
    stain_palette (primary, other, direction),
    ...
  )
}


#' Discrete color stain
#'
#' @param primary
#' The default primary color name for the stain palette is "lemon"
#' @param other
#' The default primary color name for the stain palette is "wood"
#' @param direction
#' Sets the order of the colors in the scale. it gives the default order; if less than 0 the order of colours is reversed
#' @param ...
#' Other parameters that support the scale_color_discrete function
#'
#' @return
#' It will return corresponding hexcode of the color name to the ggplot
#' @examples
#' scale_color_stain_d(primary = "lemon", other = "wood", direction = 1)
#' scale_color_stain_d(primary = "lemon", other = "pink", direction = 1)
#' @rdname scale_color_stain_d
#' @export scale_color_stain_d
#'
scale_color_stain_d <- scale_colour_stain_d


#' #' Discrete fill stain
#'
#' @param primary
#' The default primary color name for the stain palette is "lemon"
#' @param other
#' The default primary color name for the stain palette is "wood"
#' @param direction
#' Sets the order of the colours in the scale. it gives the default order; if less than 0 the order of colours is reversed
#' @param ...
#' Other parameters that support the scale_fill_discrete function
#'
#' @return
#' It will return corresponding hexcode of the colour name to the ggplot
#'
#' @examples
#'  scale_fill_stain_d(primary = "lemon", other = "wood", direction = 1)
#'  scale_fill_stain_d(primary = "lemon", other = "pink", direction = 1)
#' @rdname scale_fill_stain_d
#' @export
scale_fill_stain_d <- function(
  primary = "lemon",
  other = "wood",
  direction = 1,
  ...
) {
  ggplot2::discrete_scale(
    "fill", "stain",
    stain_palette (primary, other, direction),
    ...
  )
}

