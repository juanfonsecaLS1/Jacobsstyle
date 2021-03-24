#' @import ggplot2
#' @importFrom extrafont fonts
#' @importFrom extrafont loadfonts
#' @importFrom extrafont font_import

.onLoad <- function(libname, pkgname) {
  if ("ggplot2" %in% (.packages())) {
    detach("package:ggplot2", unload = TRUE)
    print("Detaching ggplot2")
  }

  if (!"Jacobs Chronos" %in% extrafont::fonts()) {
    extrafont::font_import(pattern = ".*Jacobs.*")
  }
  extrafont::loadfonts(device = "win", quiet = TRUE)

  require(ggplot2)
}


#' Jacobs quick theme for ggplot
#'
#' @return theme function
#' @export
#'
#' @examples
#' ggplot(mtcars,aes(factor(am),fill=factor(cyl)))+
#' geom_bar(position = position_dodge(),width = 0.9)+
#'   scale_fill_Jacobs(discrete = TRUE,categories = 3,offset_pallete = 1,reverse = TRUE)+
#'   geom_hline(yintercept = 0, size = 1, colour = Jacobs_cols("darkGray"))+
#'   labs(title="This is the title",
#'        subtitle = "this is the subtitle",
#'        caption = "This is the caption")+
#'   theme_Jacobs()
theme_Jacobs <- function() {
  ggplot2::theme(
    text = ggplot2::element_text(family = "Jacobs Chronos"),
    plot.title = ggplot2::element_text(
      size = 16,
      face = "bold",
      color = Jacobs_cols("darkGray")
    ),
    plot.subtitle = ggplot2::element_text(size = 12, margin = ggplot2::margin(3, 0, 10, 0)),
    legend.position = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(size = 10, color = Jacobs_cols("darkGray")),
    axis.title = ggplot2::element_text(size = 10, color = Jacobs_cols("darkGray")),
    axis.text = ggplot2::element_text(size = 10, color = Jacobs_cols("darkGray")),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_blank() ,
    panel.grid.minor.x = ggplot2::element_blank() ,
    panel.grid.major.y = ggplot2::element_line(size = .1, color = Jacobs_cols("lighterGray")),
    panel.grid.minor.y = ggplot2::element_line(size = .05, color = Jacobs_cols("lighterGray")),
    panel.background = ggplot2::element_blank(),
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(size = 10, hjust = 0),
    plot.caption = ggplot2::element_text(colour = Jacobs_cols("Gray"), face = "italic")
  )
}
