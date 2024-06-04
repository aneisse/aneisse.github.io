library(tidyverse)
library(ggpubr)

# Amostrando
df <- tibble(x = rexp(50))

ggplot(df) + 
  geom_histogram(aes(x), bins = 15, color = "white", fill = "dodgerblue") + 
  labs(x = NULL, y = NULL) +
  theme_pubclean()

ggsave(filename = "OSample.png", dpi = 500)

# Reamostrando
df_res <- sample_n(df, size = nrow(df), replace = T)

ggplot(df_res) + 
  geom_histogram(aes(x), bins = 15, color = "white", fill = "orange") + 
  labs(x = NULL, y = NULL) +
  theme_pubclean()

ggsave(filename = "BSample.png", dpi = 500)

# Obtendo distribuição amostral
risos <- function(df){
  
  df2 <- sample_n(df, nrow(df), replace = T)
  
  return(mean(df2$x))
}

resample <- tibble(x = map_dbl(1:10000, ~risos(df)))

ggplot(resample) + 
  geom_histogram(aes(x), bins = 15, color = "white", fill = "firebrick") + 
  labs(x = NULL, y = NULL) +
  theme_pubclean()

ggsave(filename = "BDistribution.png", dpi = 500)
