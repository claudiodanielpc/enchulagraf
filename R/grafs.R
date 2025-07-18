#' Gráfica de línea
#'
#' @param data Un data.frame
#' @param x Variable en el eje x 
#' @param y Variable en el eje y 
#' @param titulo Título del gráfico
#' @return Un objeto ggplot
#' @export
#'


grafica_linea <- function(data, x, y, titulo = "Mi gráfico de línea bonito",subtitulo = "",
                        titulo_x = "Eje X",
                          titulo_y = "Eje Y",
                          caption = "Fuente: Datos generados por mí",
                          color_linea= "steelblue",
                          tam_linea = 1,
                          tam_title = 16,
                          tam_subtitulo = 14,
                          tam_fuente = 12,
                          tam_titulo_ejes=10,
                          tam_etiquetas_ejes = 10,
                          fuente = NULL
) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_line(color = color_linea, size = tam_linea) +
    ggplot2::labs(title = titulo, x = titulo_x, y = titulo_y, subtitle = subtitulo, caption = caption
    ) +
    ggplot2::theme_minimal()+
    ggplot2::theme(
      text = ggplot2::element_text(family = fuente),
      plot.title = ggplot2::element_text(hjust = 0, size = tam_title, face = "bold"),
      plot.subtitle = ggplot2::element_text(hjust = 0, size = tam_subtitulo, face = "italic"),
      plot.caption = ggplot2::element_text(hjust = 0, size = tam_fuente),
      axis.title.x = ggplot2::element_text(size = tam_titulo_ejes),
      axis.title.y = ggplot2::element_text(size = tam_titulo_ejes),
      axis.text.x = ggplot2::element_text(size = tam_etiquetas_ejes),
      axis.text.y = ggplot2::element_text(size = tam_etiquetas_ejes)
    )
}