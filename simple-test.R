library(knitr)
library(here)
library(kableExtra)

outfile = here("test.png")
table = head(iris)
latex =  kable(x = table, format = "html")
as_image(x = latex, file = outfile)
  
