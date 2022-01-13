library(fpp3)
y <- tsibble(
  Year = 2015:2019,
  Observation = c(123,39,78,52,110),
  index = Year
)

z <- tibble(Month = c("2019 Jan", "2019 Feb", "2019 Mar","2019 Apr","2019 May"),
            Observation = c(50,23,34,30,25))

z %>% 
  mutate(Month = yearmonth(Month)) %>%
  as_tsibble(index = Month)

