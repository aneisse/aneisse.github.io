# Pacotes necess�rios para o curso
pacotes <- c("tidyverse", "rmarkdown", "blogdown", 
             "bookdown", "tufte", "rticles", "htmlwidgets", 
             "DT", "plotly", "leaflet", "xaringan")

install.packages(pacotes)

# Caso n�o tenha LaTeX instalado
install.packages("tinytex")
tinytex::install_tinytex()
