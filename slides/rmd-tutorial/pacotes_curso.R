# Pacotes necessários para o curso
pacotes <- c("tidyverse", "rmarkdown", "blogdown", 
             "bookdown", "tufte", "rticles", "htmlwidgets", 
             "DT", "plotly", "leaflet", "xaringan")

install.packages(pacotes)

# Caso não tenha LaTeX instalado
install.packages("tinytex")
tinytex::install_tinytex()
