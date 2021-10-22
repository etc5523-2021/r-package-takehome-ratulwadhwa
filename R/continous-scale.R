#' Continuous scale for Stain
#'
#' @param name
#' The name parameter sets the color for the plot. This will only allow to use colors from the palette, else throws an error.
#' @param direction
#' The default direction parameter produce the high luminance colour for the top of the scale.(i.e. lighter colours correspond to higher values).
#' @param amount
#' this argument to the function allows the user to define the amount of lightening
#' @param ...
#' Other parameters that support the scale_colour_continous function
#'
#' @return
#' It will return corresponding hexcode of the colour name to the ggplot
#' @examples
#' scale_colour_stain_seq_c(name = "lemon", direction = 1, amount = 0.7)
#' scale_colour_stain_seq_c(name = "skin", direction = 1, amount = 0.7)
#' @rdname scale_colour_stain_seq_c
#' @export scale_colour_stain_seq_c
scale_colour_stain_seq_c <- function(name = "teal", direction = 1, amount = 0.6, ...) {
  # check that name is in your palette
  # throw an error if it isn't
  if (!name %in% names(stain_colours)){
    stop("Color supplied does not exist in palette")
  }
  # set the low colour
  low = stain_colours[[name]]

  # set the high colour with colorspace pkg
  high = colorspace::lighten(stain_colours[[name]], amount = amount, space = "combined", fixup = TRUE)

  # if direction is < 0 switch high and low
  if (direction < 0){
    temp = low
    low = high
    high = temp
  }

  # pass everything on to ggplot2 color gradient
  ggplot2::scale_color_gradient(
    ...,
    low = low,
    high = high,
    na.value = "black",
    aesthetics = "colour"
  )
}

