#' Nima's plotting theme
#'
#' Nima's ggplot2 theme: white background, colors optimized
#'
#' @param base_size Base font size
#' @param base_family Base font family
#'
#' @importFrom ggplot2 ggplot rel element_text element_rect element_line
#' @importFrom ggplot2 element_blank
#' @importFrom grid unit
#' @importFrom ggthemes theme_foundation
#'
#' @return An object as returned by \code{\link[ggplot2]{theme}}
#'
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars, aes(y = mpg, x = disp, color = factor(cyl)))
#' p <- p + geom_point() + scale_fill_nima() + scale_color_nima()
#' p <- p + theme_nima()
#' p
#' @seealso
#' \code{\link[ggplot2]{theme}}
#'
#' @export
theme_nima <- function(base_size = 14, base_family = "Helvetica") {
  (theme_foundation(base_size = base_size, base_family = base_family)
  + theme(
      plot.title = element_text(
        face = "bold",
        size = rel(1.2), hjust = 0.5
      ),
      text = element_text(),
      panel.background = element_rect(colour = NA),
      plot.background = element_rect(colour = NA),
      panel.border = element_rect(colour = NA),
      axis.title = element_text(face = "bold", size = rel(1)),
      axis.title.y = element_text(angle = 90, vjust = 2),
      axis.title.x = element_text(vjust = -0.2),
      axis.text = element_text(),
      axis.line = element_line(colour = "black"),
      axis.ticks = element_line(),
      axis.ticks.length = unit(0, "cm"),
      panel.grid.major = element_line(colour = "#f0f0f0"),
      panel.grid.minor = element_blank(),
      legend.key = element_rect(colour = NA),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.key.size = unit(0.2, "cm"),
      legend.spacing = unit(0, "cm"),
      legend.title = element_text(face = "italic"),
      plot.margin = unit(c(10, 5, 5, 5), "mm"),
      strip.background = element_rect(
        colour = "#f0f0f0",
        fill = "#f0f0f0"
      ),
      strip.text = element_text(face = "bold")
    ))
}

#' @rdname theme_nima
#' @export
nima_theme <- theme_nima


#' Nima's ggplot2 theme - supplement: scale_fill
#'
#' Nima's ggplot2 theme scale_fill supplement: colors optimized via ColorBrewer
#'
#' @param ... Passed to \code{\link[ggplot2]{ggplot}}
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#'
#' @export
#'
#
scale_fill_nima <- function(...) {
  discrete_scale(
    "fill", "nima",
    manual_pal(values = c(
      "#386cb0", "#fdb462", "#7fc97f",
      "#ef3b2c", "#662506", "#a6cee3",
      "#fb9a99", "#984ea3", "#ffff33"
    )), ...
  )
}


#' Nima's ggplot2 theme - supplement: scale_color
#'
#' Nima's ggplot2 theme scale_color supplement: colors optimized via ColorBrewer
#'
#' @param ... Passed to \code{\link[ggplot2]{ggplot}}
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#'
#' @export
#'
#
scale_color_nima <- function(...) {
  discrete_scale(
    "colour", "nima",
    manual_pal(values = c(
      "#386cb0", "#fdb462", "#7fc97f",
      "#ef3b2c", "#662506", "#a6cee3",
      "#fb9a99", "#984ea3", "#ffff33"
    )), ...
  )
}
