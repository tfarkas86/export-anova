library(knitr)
library(here)
library(kableExtra)
library(tinytex)

outfile <- here("test.png")
table <- head(iris)
latex <-  kable(x = table, format = "latex", booktabs = TRUE, linesep = "")
tryCatch(save_kable(x = latex, file = outfile, keep_tex = TRUE), 
         error = function(e) {print("No PDF Created With kableExtra::save_kable()")})
tinytex::xelatex('test.tex')

<<<<<<< HEAD
outfile = here("test_table.png")
table = head(iris)
latex =  kable(x = table, format = "html")
save_kable(x = latex, file = outfile)
=======
>>>>>>> a3466557256dd4b3790cda0b6071536ef98e98ee
  
  