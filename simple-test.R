library(knitr)
library(here)
library(kableExtra)

outfile <- here("test.pdf")
table <- head(iris)
latex <-  kable(x = table, format = "latex", booktabs = TRUE, linesep = "")
tryCatch(save_kable(x = latex, file = outfile, keep_tex = FALSE), 
         error = function(e) {print("No PDF Created With kableExtra::save_kable()")})



  