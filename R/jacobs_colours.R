

# Colour Definition -------------------------------------------------------

Jacobs_colours <- c(
  'Blue' = "#231EDC",
  'lightBlue' = "#0A7DFF",
  'lighterBlue' = "#5AE6FF",
  'darkBlue' = "#001E55",
  'Purple' = "#6F006E",
  'lightPurple' = "#A800A8",
  'lighterPurple' = "#D7A5F5",
  'darkPurple' = "#460F32",
  'Red' = "#D72850",
  'lightRed' = "#FF465F",
  'lighterRed' = "#FF9191",
  'darkRed' = "#690A28",
  'Yellow' = "#FFA014",
  'lightYellow' = "#FFB41E",
  'lighterYellow' = "#FFDC78",
  'darkYellow' = "#A04B00",
  'Green' = "#007D55",
  'lightGreen' = "#0AD287",
  'lighterGreen' = "#78FAC8",
  'darkGreen' = "#003C2D",
  'Gray' = "#A5A5A5",
  'lightGray' = "#C8C8C8",
  'lighterGray' = "#E6E6E6",
  'darkGray' = "#333333",
  'White' = "#FFFFFF",
  'Black' = "#000000"
)


#' Function to extract Jacobs colours as hex codes
#'
#' @param ... Character names of colours
#'
#' @return Colours as hex codes
#' @export
#'
#' @examples
#'
#' Jacobs_cols("Red")
#' Jacobs_cols("Red","darkBlue")
Jacobs_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (Jacobs_colours)

  Jacobs_colours[cols]
}

# Definition of Colour Palettes -------------------------------------------

Jacobs_palettes <- list(
  `Blues` = Jacobs_cols("darkBlue", "Blue", "lightBlue", "lighterBlue", "White"),
  `Purples` = Jacobs_cols(
    "darkPurple",
    "Purple",
    "lightPurple",
    "lighterPurple",
    "White"
  ),
  `Reds` = Jacobs_cols("darkRed", "Red", "lightRed", "lighterRed", "White"),
  `Yellows` = Jacobs_cols(
    "darkYellow",
    "Yellow",
    "lightYellow",
    "lighterYellow",
    "White"
  ),
  `Greens` = Jacobs_cols("darkGreen", "Green", "lightGreen", "lighterGreen", "White"),
  `Grays` = Jacobs_cols("darkGray", "Gray", "lightGray", "lighterGray"),
  `BlYe` = Jacobs_cols(
    "darkBlue",
    "Blue",
    "lightBlue",
    "lighterBlue",
    "White",
    rev(c(
      "darkYellow", "Yellow", "lightYellow", "lighterYellow"
    ))
  ),
  `RdYe` = Jacobs_cols("darkRed", "Red", "lightRed", "lighterRed", "White", rev(
    c("darkYellow", "Yellow", "lightYellow", "lighterYellow")
  )),
  `GrYe` = Jacobs_cols(
    "darkGreen",
    "Green",
    "lightGreen",
    "lighterGreen",
    "White",
    rev(c(
      "darkYellow", "Yellow", "lightYellow", "lighterYellow"
    ))
  ),
  `PrYe` = Jacobs_cols(
    "darkPurple",
    "Purple",
    "lightPurple",
    "lighterPurple",
    "White",
    rev(c(
      "darkYellow", "Yellow", "lightYellow", "lighterYellow"
    ))
  ),
  `RdBl` = Jacobs_cols("darkRed", "Red", "lightRed", "lighterRed", "White", rev(
    c("darkBlue", "Blue", "lightBlue", "lighterBlue")
  )),
  `GrBl` = Jacobs_cols(
    "darkGreen",
    "Green",
    "lightGreen",
    "lighterGreen",
    "White",
    rev(c(
      "darkBlue", "Blue", "lightBlue", "lighterBlue"
    ))
  ),
  `PrBl` = Jacobs_cols(
    "darkPurple",
    "Purple",
    "lightPurple",
    "lighterPurple",
    "White",
    rev(c(
      "darkBlue", "Blue", "lightBlue", "lighterBlue"
    ))
  ),
  `GrRd` = Jacobs_cols(
    "darkGreen",
    "Green",
    "lightGreen",
    "lighterGreen",
    "White",
    rev(c(
      "darkRed", "Red", "lightRed", "lighterRed"
    ))
  ),
  `PrRd` = Jacobs_cols(
    "darkPurple",
    "Purple",
    "lightPurple",
    "lighterPurple",
    "White",
    rev(c(
      "darkRed", "Red", "lightRed", "lighterRed"
    ))
  ),
  `PrGr` = Jacobs_cols(
    "darkPurple",
    "Purple",
    "lightPurple",
    "lighterPurple",
    "White",
    rev(c(
      "darkGreen", "Green", "lightGreen", "lighterGreen"
    ))
  ),
  `RdYeGr` = Jacobs_cols(
    "darkRed",
    "Red",
    "lightRed",
    "lightYellow",
    "lightGreen",
    "Green",
    "darkGreen"
  ),
  `mainP1` = Jacobs_cols("Blue",
                         "Purple",
                         "Red",
                         "Yellow",
                         "Green"),
  `mainP1P2` = Jacobs_cols(
    "Blue",
    "lightBlue",
    "Purple",
    "lightPurple",
    "Red",
    "lightRed",
    "Yellow",
    "lightYellow",
    "Green",
    "lightGreen"
  ),
  `mainP2` = Jacobs_cols(
    "lightBlue",
    "lightPurple",
    "lightRed",
    "lightYellow",
    "lightGreen"
  ),
  `main20` = Jacobs_cols(
    "darkBlue",
    "Blue",
    "lightBlue",
    "lighterBlue",
    "darkPurple",
    "Purple",
    "lightPurple",
    "lighterPurple",
    "darkRed",
    "Red",
    "lightRed",
    "lighterRed",
    "darkYellow",
    "Yellow",
    "lightYellow",
    "lighterYellow",
    "darkGreen",
    "Green",
    "lightGreen",
    "lighterGreen"
  ),
  `mainP3` = Jacobs_cols(
    "lighterBlue",
    "lighterPurple",
    "lighterRed",
    "lighterYellow",
    "lighterGreen"
  ),
  `cool` = Jacobs_cols("Green", "lightGreen", "lighterGreen", rev(c(
    "Blue", "lightBlue", "lighterBlue"
  ))),
  `hot` = Jacobs_cols("Red", "lightRed", rev(c(
    "Yellow", "lightYellow"
  )))
)

#' Return function to interpolate a Jacobs color palette
#'
#' @param palette Character name of palette in Jacobs_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @param discrete Boolean indicating whether the palette is going to be used for discrete categories
#' @param categories Integer between 1 and 20 with number of categories if discrete is TRUE
#' @param offset_pallete Integer positive indicating the change of initial colour for the palette
#'
#' @return
#' @export
#'
#' @examples
#'
Jacobs_pal <- function(palette = "mainP1",
                       reverse = FALSE,
                       discrete = FALSE,
                       categories = NULL,
                       offset_pallete = 0,
                       ...) {
  if (discrete){
    offset_tone<-ifelse(categories>15,0,1)
    subset_colour<-rep(1:5,(offset_pallete+10)%/%5)[(offset_pallete+1):(offset_pallete+5)]
    subset_tone<-rep(1:4,(offset_tone+8)%/%4)[(offset_tone+1):(offset_tone+4)]

    A<-matrix(names(Jacobs_palettes[["main20"]]),nrow = 4)

    B<-A[subset_tone,subset_colour][1:ceiling(categories%/%5+1),]
    if(categories<5){
      pal<-Jacobs_cols(B[1:categories])
    }else{
    C<-matrix(c(1:5),
              ncol = dim(B)[2],
              nrow = dim(B)[1],
              byrow = TRUE)


    C2<-t(C)
    C2[(categories+1):length(C)]<-NA
    pal<-Jacobs_cols(t(B)[order(C2)[1:categories]])
    }
  }else{
    pal <- Jacobs_palettes[[palette]]
    }
  if (reverse){
    pal <- rev(pal)
    }

  colorRampPalette(pal, ...)
}

#' Colour scale constructor for Jacobs colours
#'
#' @param palette Character name of palette in Jacobs_palettes
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or scale_color_gradient(), used respectively when discrete is TRUE or FALSE
#' @param categories
#' @param offset_pallete
#'
#' @return
#' @export
#'
#' @examples
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#' geom_point(size = 4) +
#' scale_color_Jacobs(pallete)
#'
#'
scale_color_Jacobs <-
  function(palette = "mainP1",
           discrete = TRUE,
           reverse = FALSE,
           categories = 5,
           offset_pallete = 0,
           ...) {


    if (discrete) {
      pal <- Jacobs_pal(palette = palette, reverse = reverse,
                        discrete=discrete,
                        categories = categories,offset_pallete = offset_pallete)
      ggplot2::discrete_scale("colour", paste0("Jacobs_", palette), palette = pal, ...)
    } else {
      pal <- Jacobs_pal(palette = palette, reverse = reverse)
      ggplot2::scale_color_gradientn(colours = pal(256), ...)
    }
  }

#' Fill scale constructor for Jacobs colours
#'
#' @param palette Character name of palette in Jacobs_palettes
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param categories
#' @param offset_pallete
#' @param reverse Boolean indicating whether the palette should be reversed
#'
#' @return
#' @export
#'
#' @examples
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
#' geom_point(size = 4, alpha = .6) +
#' scale_color_Jacobs(discrete = FALSE,palette = "mainP2")

scale_fill_Jacobs <-
  function(palette = "mainP1",
           discrete = TRUE,
           reverse = FALSE,
           categories = 5,
           offset_pallete = 0,
           ...) {


    if (discrete) {
      pal <- Jacobs_pal(palette = palette,
                        reverse = reverse,
                        discrete=discrete,
                        categories = categories,
                        offset_pallete = offset_pallete)
      ggplot2::discrete_scale("fill", paste0("Jacobs_", palette), palette = pal, ...)
    } else {
      pal <- Jacobs_pal(palette = palette, reverse = reverse)
      ggplot2::scale_fill_gradientn(colours = pal(256), ...)
    }
  }
