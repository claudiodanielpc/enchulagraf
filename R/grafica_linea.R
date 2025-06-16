#' Gráfica de línea
#'
#' @param data Un data.frame
#' @param x Variable en el eje x (como string)
#' @param y Variable en el eje y (como string)
#' @param titulo Título del gráfico
#' @return Un objeto ggplot
#' @export
#' 
showtext::font_add_google("Poppins", "Poppins")
showtext::showtext_auto()

grafica_linea <- function(data, x, y, titulo = "Mi gráfico de línea bonito",subtitulo = "",
                          caption = "Fuente: Datos generados por mí") {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_line(color = "steelblue", size = 1) +
    ggplot2::labs(title = titulo, x = x, y = y,subtitle = subtitulo,caption = caption
    ) +
    ggplot2::theme_minimal()+
    ggplot2::theme(
      text = ggplot2::element_text(family = "Poppins"),
      plot.title = ggplot2::element_text(hjust = 0, size = 16, face = "bold"),
      plot.subtitle = ggplot2::element_text(hjust = 0, size = 14, face = "italic"),
      plot.caption = ggplot2::element_text(hjust = 0, size = 12, face = "italic"),
      axis.title.x = ggplot2::element_text(size = 14),
      axis.title.y = ggplot2::element_text(size = 14),
      axis.text.x = ggplot2::element_text(size = 12),
      axis.text.y = ggplot2::element_text(size = 12)
    )
}
