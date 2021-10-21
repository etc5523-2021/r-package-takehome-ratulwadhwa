
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

scale_color_stain_d <- scale_colour_stain_d



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

