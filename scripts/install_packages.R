# check if packages are installed and install them if that is not the case
packages <- c("remotes", 
              "tidyverse",
              "anytime",
              "qdapRegex",
              "vosonSML",
              "syuzhet",
              "ggcorrplot",
              "ridgeline",
              "sentimentr",
              "quanteda",
              "quanteda.textstats",
              "wordcloud")

install.packages(setdiff(packages,
                         rownames(installed.packages())))

# some packages need to be installed from GitHub
library(remotes)

install_github("soodoku/tuber", build_vignettes = TRUE)
install_github("hadley/emo")
install_github("dill/emoGG")
install_github("jooyoungseo/youtubecaption")