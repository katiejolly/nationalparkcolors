
#' Complete list of palettes
#'
#' Use \code{\link{park_palette}} to construct palettes of desired length.
#'
#' @export
park_palettes <- list(
  SmokyMountains = c("#D58A60", "#40663F", "#497381", "#548F01", "#CFA3EE", "#4E5462"),
  RockyMountains = c("#EBECF0", "#DDC70F", "#4B4E55", "#62589F", "#2B313F"),
  Yellowstone = c("#8CBEB1", "#FAFAF2","#EEEAA0", "#999275", "#E8C533", "#3A5836"),
  Arches = c("#A8CDEC", "#F6955E", "#682C37", "#9B6981", "#7887A4", "#A89F8E"),
  ArcticGates = c("#F4E7C5", "#678096", "#ACC2CF", "#979461", "#CD5733", "#A12A19"),
  MtMckinley = c("#D5AE63", "#6E6C81", "#F7ECD8", "#3F3939", "#93AD90", "#C9B793"),
  GeneralGrant = c("#FBE697", "#F3AE6D", "#516888", "#C9DACA", "#14232A", "#557780", "#1F304A", "#802729"),
  Hawaii = c("#D67B44", "#34273B", "#D95B42", "#150718", "#F2E191"),
  CraterLake = c("#7DCCD3", "#4E7147", "#BE9C9D", "#F7ECD8", "#376597", "#9888A5", "#DBA662"),
  Saguaro = c("#847CA3", "#E45A5A", "#F4A65E", "#80792B", "#F2D56F", "#1A1237"),
  GrandTeton = c("#F0EEE2", "#5B6C88", "#48594E", "#A8D0CF", "#BABBB1"),
  BryceCanyon = c("#E39B38", "#C7D8C8", "#B6BDCC", "#BFC4C5", "#9B593F"),
  MtRainier = c("#466D53", "#83CDC0", "#D3A3A1", "#A79CA5", "#FBEAD6"),
  Badlands = c("#5495CF", "#F5AF4D", "#DB4743", "#7C873E", "#FEF4D5"),
  Redwoods = c("#769370", "#BDB2A7", "#F1C646", "#6E687E", "#F17236"),
  Everglades = c("#91D5DE", "#2E8289", "#B4674E", "#EAAE37", "#565F41"),
  Voyageurs = c("#8FC0CE", "#F6F18F", "#FDFCDE", "#238451", "#359F8B"),
  BlueRidgePkwy = c("#EC8FA3", "#FCBA65", "#FAECCF", "#8D7F99", "#8C9D57", "#163343"),
  Denali = c("#73979D", "#DADCD7", "#43200E", "#E16509", "#747669"),
  GreatBasin = c("#6BBAE5", "#E3EEF4", "#454B68", "#F9F5EA", "#81974C", "#553F31"),
  ChannelIslands = c("#F5D2E6", "#554C6C", "#EB8D43", "#70646E", "#7397CB", "#CEA347"),
  Yosemite = c("#9FC2B2", "#DFDED3", "#A49A69", "#3F5B66", "#869144"),
  Acadia = c("#FED789", "#023743", "#72874E", "#476F84", "#A4BED5", "#453947"),
  DeathValley = c("#B23539", "#FAB57C", "#F7E790", "#73652D", "#E79498", "#514289"),
  Zion = c("#469BEC", "#C9FAFF", "#F1E3B6", "#C4878C", "#6D882B")
)

#' A National Park palette generator
#'
#' These are a handful of color palettes from National Park posters and images.
#'
#' @param n Number of colors desired. Most palettes now only
#'   have 5 to 8 colors. Most color
#'   schemes are derived from \href{http://poppygall.com/blog/2011/07/25/color-inspiration-national-park-wpa-posters/}{Color Inspiration – National Park WPA Posters}.
#'   If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{SmokyMountains}, \code{RockMountains},  \code{Yellowstone},
#'   \code{Arches}, \code{ArticGates},  \code{MtMckinley}, \code{GeneralGrant},
#'   \code{Hawaii},  \code{CraterLake} , \code{Saguaro} ,
#'   \code{GrandTeton}, \code{BryceCanyon}, \code{MtRainier}, \code{Badlands},
#'   \code{Redwoods}, \code{Everglades}, \code{Voyageurs}
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' park_palette("SmokyMountains")
#' park_palette("Yellowstone", 3)

park_palette <- function(name, n) {


  pal <- park_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- pal[1:n]

  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "Lato", col = "#32373D")
}

