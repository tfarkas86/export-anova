library(knitr)
library(here)
library(kableExtra)

outfile = here("test_table.png")
table = head(iris)
latex =  kable(x = table, format = "html")
save_kable(x = latex, file = outfile)
  
  