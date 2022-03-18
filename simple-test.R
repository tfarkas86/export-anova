library(knitr)
library(here)
library(kableExtra)
library(tinytex)

outfile = here("test.png")
table = head(iris)
latex =  kable(x = table, format = "latex", booktabs = TRUE, linesep = "")
tryCatch(save_kable(x = latex, file = outfile, keep_tex = TRUE))
tinytex::xelatex('test.tex')

  
