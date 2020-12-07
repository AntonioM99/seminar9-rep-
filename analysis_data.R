library(readxl)
library(ggplot2)
library(dplyr)

lockdown_data <- read_xlsx("life-under-lockdown-w2-extract.xlsx", sheet = 1)

ggplot (data = lockdown_data) +
  geom_point(mapping = aes(x = age, y = beliefs),
  position = "jitter"
)
  
ggplot (data = lockdown_data) +
  geom_point(mapping = aes(x = gender, y = beliefs),
  position = "jitter"
  )

 lockdown_data <- lockdown_data %>%
    mutate(
     lockdown_data1 = lockdown_data %>%
        recode(
          'Nothing at all' = 0,
          'Not very much' = 1,
          'A fair amount' = 2,
          'A great deal' = 3,
        )
    )