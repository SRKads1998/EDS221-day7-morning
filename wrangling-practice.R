library(tidyverse)
library(palmerpenguins)
library(lubridate)
library(ggplot2)
library(here)
library(dplyr)

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
            
animals <- data.frame(
  stringsAsFactors = FALSE,
          location = c("lagoon", "bluff", "creek", "oaks", "bluff"),
           species = c("bobcat", "coyote", "fox", "squirrel", "bobcat"),
          maturity = c("adult", "juvenile", "adult", "juvenile", "adult")
)
sites <- data.frame(
  stringsAsFactors = FALSE,
          location = c("beach", "lagoon", "bluff", "oaks"),
    full_site_name = c("Goleta Beach","UCSB Lagoon",
                       "Ellwood Mesa","Fremont Campground"),
      jurisdiction = c("SB City", "UCSB", "SB City", "USFS")
)

# practice joins

full_join(animals, sites)

left_join(animals, sites)

right_join(animals, sites)

inner_join(animals, sites)

semi_join(animals, sites)

anti_join(animals, sites)
