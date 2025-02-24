library(here)

# source the export_anova.R script to get function in environment
source(here("export_anova.R"))
# source("~/Dropbox/1_Work/1_Research/Rob Clark/export-anova/export_anova.R")

# create (or load) a GLM object
mod <- glm(Sepal.Length ~ Sepal.Width + Petal.Length, data = iris)

# create data frame for names
renames <- data.frame(old = c("Sepal.Width", "Petal.Length"), 
                      new = c("Sepal Width", "Petal Length"))

# a place to put the table
file = here("test_table.pdf")

export_anova(mod = mod, file = file, pnames = renames)

