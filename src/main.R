library(plumber)

print('Loading main.R')

pr("plumber.R") %>%
  pr_run(port=8000, host="0.0.0.0")