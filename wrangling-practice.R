library(tidyverse)
library(palmerpenguins)
library(lubridate)
library(ggplot2)
library(here)

# clear environment rm(list = lS())
view(penguins)


#penguins_wrangled <- penguins %>% {
  if "island" == "Biscoe", "Dream" | %>%
    remove("year", "sex)" | %>% 
} 
  
penguins %>%
  filter(island %in% c("Briscoe", "Dream")) %>%
  select(-year, -sex) %>%
  mutate("body_mass_kg" = body_mass_g / 1000) %>%
  rename(location = island)

penguins %>%
  filter(species == "Adelie") %>%
  filter(!is.na(flipper_length_mm)) %>%
  group_by(sex) %>%
  summarise(mean = mean(flipper_length_mm),
            standard_dev = sd(flipper_length_mm),
            sample_size = n())
            
