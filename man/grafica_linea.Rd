% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grafs.R
\name{grafica_linea}
\alias{grafica_linea}
\title{Gráfica de línea}
\usage{
grafica_linea(
  data,
  x,
  y,
  titulo = "Mi gráfico de línea bonito",
  subtitulo = "",
  titulo_x = "Eje X",
  titulo_y = "Eje Y",
  caption = "Fuente: Datos generados por mí",
  color_linea = "steelblue",
  tam_linea = 1,
  tam_title = 16,
  tam_subtitulo = 14,
  tam_fuente = 12,
  tam_titulo_ejes = 10,
  tam_etiquetas_ejes = 10,
  fuente = NULL
)
}
\arguments{
\item{data}{Un data.frame}

\item{x}{Variable en el eje x}

\item{y}{Variable en el eje y}

\item{titulo}{Título del gráfico}
}
\value{
Un objeto ggplot
}
\description{
Gráfica de línea
}
