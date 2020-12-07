library(readxl)
library(ggplot2)

lockdown_data <- read_xlsx("life-under-lockdown-w2-extract.xlsx", sheet = 1)

ggplot (data = lockdown_data) +
  geom_point(mapping = aes(x = age, y = beliefs),
  position = "jitter"
)
  