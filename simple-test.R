library(knitr)
library(here)
library(kableExtra)

outfile = here("test.pdf")
table = head(iris)
latex =  kable(x = table, format = "latex")
as_image(x = latex, file = outfile)
  
