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
library(lubridate)

#practice w/ lubridate
my_date <- "03-13-1998"
lubridate::mdy(my_date)

# new format for date
my_date2 <- "08-June-1974"
lubridate::dmy(my_date2)
my_date3 <- "19160518"
lubridate::ymd(my_date3)

# what happens if the date  don't make sense
lubridate::mdy("1942-08-30")

lubridate::dmy("09/12/84")

# workin w/ times
time <- "2020-8-12 11:18"
time <- ymd_hm(time)

# convert to PDT with_tz to add time zone 
with_tz(time, "America/Los_Angeles")

# extract info from dates
week(time)
year(time)
day(time)

start_time <- Sys.time()

end_time <- Sys.time()

end_time - start_time
