#### NEVER SHARE THIS SCRIPT


#### Testing YouTube API Access

# installing the tuber package if not installed already
if("tuber" %in% installed.packages() != TRUE) {
  install.packages("tuber")
}

# loading tuber package
library(Rcpp) # maing extra sure this is available
library(tuber)


# Your Credentials (NEVER SHARE THIS SCRIPT)
ID <- "ENTER-API-ID-HERE"
secret <- "ENTER-API-SECRET-HERE"

# authentication
yt_oauth(ID,secret)

# You will be asked in the R-console to
# save an access token: Select no

# You will be send to your browser to log in

### testing if it works:

# get statistics of https://www.youtube.com/watch?v=HluANRwPyNo
get_stats(video_id="HluANRwPyNo")

# Searching for specific keyword
data <- yt_search(term = "US elections",
                   published_after = "2019-01-01T00:00:00Z",
                   published_before = "2021-01-01T00:00:00Z",
                   simplify = TRUE)

# getting comments
comments <- get_all_comments(video_id = "iik25wqIuFo")
commentThreads <- get_comment_threads(filter=c(video_id = "iik25wqIuFo"))