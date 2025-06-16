#' Gráfica de línea
#'
#' @param data Un data.frame
#' @param x Variable en el eje x (como string)
#' @param y Variable en el eje y (como string)
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
                          tam_tiulo = 16,
                          tam_subtitulo = 14,
                          tam_fuente = 12,
                          tam_titulo_ejes=10,
                          tam_etiquetas_ejes = 10
) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_line(color = color_linea, size = tam_linea) +
    ggplot2::labs(title = titulo, x = x, y = y,subtitle = subtitulo,caption = caption
    ) +
    ggplot2::theme_minimal()+
    ggplot2::theme(
      plot.title = ggplot2::element_text(hjust = 0, size = tam_tiulo, face = "bold"),
      plot.subtitle = ggplot2::element_text(hjust = 0, size = tam_subtitulo, face = "italic"),
      plot.caption = ggplot2::element_text(hjust = 0, size = tam_fuente),
      axis.title.x = ggplot2::element_text(size = tam_titulo_ejes),
      axis.title.y = ggplot2::element_text(size = tam_titulo_ejes),
      axis.text.x = ggplot2::element_text(size = tam_etiquetas_ejes),
      axis.text.y = ggplot2::element_text(size = tam_etiquetas_ejes)
    )
}

#' Gráfica de barras
#'
#' @param data Un data.frame
#' @param x Variable en el eje x (como string)
#' @param y Variable en el eje y (como string)
#' @param titulo Título del gráfico
#' @return Un objeto ggplot
#' @export
#'
#'

grafica_barras <- function(data, x, y, titulo = "Mi gráfico de barras bonito",subtitulo = "",
                            titulo_x = "Eje X",
                            titulo_y = "Eje Y",
                           caption = "Fuente: Datos generados por mí",
                           color_barras= "steelblue",
                           tam_tiulo = 16,
                           tam_subtitulo = 14,
                           tam_fuente = 12,
                           tam_titulo_ejes=10,
                           tam_etiquetas_ejes = 10
) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_bar(stat = "identity", fill = color_barras) +
    ggplot2::labs(title = titulo, x = x, y = y,subtitle = subtitulo,caption = caption
    ) +
    ggplot2::theme_minimal()+
    ggplot2::theme(
      plot.title = ggplot2::element_text(hjust = 0, size = tam_tiulo, face = "bold"),
      plot.subtitle = ggplot2::element_text(hjust = 0, size = tam_subtitulo, face = "italic"),
      plot.caption = ggplot2::element_text(hjust = 0, size = tam_fuente),
      axis.title.x = ggplot2::element_text(size = tam_titulo_ejes),
      axis.title.y = ggplot2::element_text(size = tam_titulo_ejes),
      axis.text.x = ggplot2::element_text(size = tam_etiquetas_ejes),
      axis.text.y = ggplot2::element_text(size = tam_etiquetas_ejes)
    )
}
