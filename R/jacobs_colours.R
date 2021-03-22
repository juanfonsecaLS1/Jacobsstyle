
# Colour Definition -------------------------------------------------------

Jacobs_colours<-c('Blue'= "#231EDC",
                  'lightBlue'="#0A7DFF",
                  'lighterBlue'="#5AE6FF",
                  'darkBlue'="#001E55",
                  'Purple'= "#6F006E",
                  'lightPurple'="#A800A8",
                  'lighterPurple'="#D7A5F5",
                  'darkPurple'="#460F32",
                  'Red'="#D72850",
                  'lightRed'="#FF465F",
                  'lighterRed'="#FF9191",
                  'darkRed'="#690A28",
                  'Yellow'="#FFA014",
                  'lightYellow'="#FFB41E",
                  'lighterYellow'="#FFDC78",
                  'darkYellow'="#A04B00",
                  'Green'="#007D55",
                  'lightGreen'="#0AD287",
                  'lighterGreen'="#78FAC8",
                  'darkGreen'="#003C2D",
                  'Gray'="#A5A5A5",
                  'lightGray'="#C8C8C8",
                  'lighterGray'= "#E6E6E6",
                  'darkGray'="#333333",
                  'White'="#FFFFFF",
                  'Black'="#000000")


#' Title
#'
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples
Jacobs_cols <- function(...) {
  cols <- c(...)
  
  if (is.null(cols))
    return (Jacobs_colours)
  
  Jacobs_colours[cols]
}

# Definition of Colour Palettes -------------------------------------------

Jacobs_palettes<-list(
  `Blues`=Jacobs_cols("darkBlue","Blue","lightBlue","lighterBlue","White"),
  `Purples`=Jacobs_cols("darkPurple","Purple","lightPurple","lighterPurple","White"),
  `Reds`=Jacobs_cols("darkRed","Red","lightRed","lighterRed","White"),
  `Yellows`=Jacobs_cols("darkYellow","Yellow","lightYellow","lighterYellow","White"),
  `Greens`=Jacobs_cols("darkGreen","Green","lightGreen","lighterGreen","White"),
  `Grays`=Jacobs_cols("darkGray","Gray","lightGray","lighterGray"),
  `BlYe`=Jacobs_cols("darkBlue","Blue","lightBlue","lighterBlue","White",rev(c("darkYellow","Yellow","lightYellow","lighterYellow"))),
  `RdYe`=Jacobs_cols("darkRed","Red","lightRed","lighterRed","White",rev(c("darkYellow","Yellow","lightYellow","lighterYellow"))),
  `GrYe`=Jacobs_cols("darkGreen","Green","lightGreen","lighterGreen","White",rev(c("darkYellow","Yellow","lightYellow","lighterYellow"))),
  `PrYe`=Jacobs_cols("darkPurple","Purple","lightPurple","lighterPurple","White",rev(c("darkYellow","Yellow","lightYellow","lighterYellow"))),
  `RdBl`=Jacobs_cols("darkRed","Red","lightRed","lighterRed","White",rev(c("darkBlue","Blue","lightBlue","lighterBlue"))),
  `GrBl`=Jacobs_cols("darkGreen","Green","lightGreen","lighterGreen","White",rev(c("darkBlue","Blue","lightBlue","lighterBlue"))),
  `PrBl`=Jacobs_cols("darkPurple","Purple","lightPurple","lighterPurple","White",rev(c("darkBlue","Blue","lightBlue","lighterBlue"))),
  `GrRd`=Jacobs_cols("darkGreen","Green","lightGreen","lighterGreen","White",rev(c("darkRed","Red","lightRed","lighterRed"))),
  `PrRd`=Jacobs_cols("darkPurple","Purple","lightPurple","lighterPurple","White",rev(c("darkRed","Red","lightRed","lighterRed"))),
  `PrGr`=Jacobs_cols("darkPurple","Purple","lightPurple","lighterPurple","White",rev(c("darkGreen","Green","lightGreen","lighterGreen"))),
  `RdYeGr`=Jacobs_cols("darkRed","Red","lightRed","lightYellow","lightGreen","Green","darkGreen"),
  `mainP1`=Jacobs_cols("Purple","Red","Yellow","Green","Blue"),
  `mainP2`=Jacobs_cols("lightPurple","lightRed","lightYellow","lightGreen","lightBlue"),
  `mainP3`=Jacobs_cols("lighterPurple","lighterRed","lighterYellow","lighterGreen","lighterBlue"),
  `cool`= Jacobs_cols("Green","lightGreen","lighterGreen",rev(c("Blue","lightBlue","lighterBlue"))),
  `hot`=Jacobs_cols("Red","lightRed",rev(c("Yellow","lightYellow")))
  
  
)

#' Title
#'
#' @param palette 
#' @param reverse 
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples
Jacobs_pal <- function(palette = "mainP1", reverse = FALSE, ...) {
  pal <- Jacobs_palettes[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  colorRampPalette(pal, ...)
}

barplot(c(1:50), col=Jacobs_pal("hot")(50))

