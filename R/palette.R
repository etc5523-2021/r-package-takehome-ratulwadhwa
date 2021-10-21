# Define colour palette variables and functions here

stain_colours <- list(
  # add your colours as a named list here, i.e.
  "lemon"     = "#FCF404",
  "pink"      = "#EC3C7C",
  "teal"      = "#057277",
  "tan"       = "#9C8877",
  "skin"      = "#C9A58C",
  "wood"      = "#52292A"
)

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
