if (!require(youtubecaption)) install.packages("youtubecaption") # Easier way for getting captions; needs Anaconda
if (!require(devtools)) install.packages("devtools") # for installation from GitHub
if (!require(tuber)) devtools::install_github("soodoku/tuber") # YouTube data
if (!require(subtools)) devtools::install_github("fkeck/subtools") # Subtitle processing
if (!require(stm)) install.packages("stm") # Functions for structural topic models (used here for text processing)
if (!require(tm)) install.packages("tm") # Subpackage of stm that is necessary, but does not install automatically

library(youtubecaption)
library(devtools)
library(tuber)
library(subtools)
library(stm)
library(tm)

# DISCLAIMER: Due to a recent change in the YouTube API, the get_captions function from the tuber package only seems to work for videos created with the account that the app used for API access was created with
# If you want to collect subtitles for videos that you did not create yourself, you should use the youtubecaption package (see below)

appID <- "" # Insert your own app Id here (OAuth 2.0 Client ID created for your project via the Google Developers platform)
appSecret <- "" # insert your own app Secret here (Client key created for your project via the Google Developers platform)
# NB: Be careful to NOT share these credentials with anyone else whom you don't want to be able to use this account.

## Upon running this line, there will be a prompt in the console asking you to save the access token in a file
## Select "No" by entering 2 in the console and hitting enter.
## Afterwards, a browser window should open, prompting you to log in with your Google account
## After logging in, you can close the browser and return to R
yt_oauth(appID,appSecret)

#### Extracting Subtitles ####
# Get video info including the subtitles id
Caption_list1 <- list_caption_tracks(video_id = "nI_OfkQOG6Q") # Video with 1 sub
Caption_list2 <- list_caption_tracks(video_id = "C0AY3AN5kI4") # video with 1 automatically created sub
Caption_list3 <- list_caption_tracks(video_id = "3TNkWTRNNYE") # video with 2 subs -> 400 error
Caption_list4 <- list_caption_tracks(video_id = "j93NnRLyym0") # ASR exists, but not selectable
Caption_list5 <- list_caption_tracks(video_id = "YgWgHRjv_Ps") # ARS exists, but no subs displayed
Caption_list6 <- list_caption_tracks(video_id = "OuO135_5Rxk") # ARS exists, but no subs displayed

# Example with Video 3
# Extract the IDs
ID_ASR <- Caption_list3[1,"id"] # automatically created subtitle
ID_DE <- Caption_list3[2,"id"] # German subtitle

# Retrieve the subtitles (format=raw)
Text_ASR <- rawToChar(get_captions(id = ID_ASR, format = "sbv")) # automatically created subtitle
Text_DE <- rawToChar(get_captions(id = ID_DE, format = "sbv")) # German subtitle (translated per default)
Text_GER <- rawToChar(get_captions(id = ID_DE, format = "sbv", lang = "de")) # German subtitle (in German)

# Known Issues
# 1. Videos can have more than one subtitle for the same language
# 2. If the video has disabled third party contributions for the subtitles, the query will result in a 403 error
#  https://stackoverflow.com/questions/30653865/downloading-captions-always-returns-a-403

# Write readable subtitles to file because subtools cannot read from variables
write(Text_ASR, file = "Captions_ASR.sbv", sep="\n") 
write(Text_DE, file = "Captions_DE.sbv", sep="\n")
write(Text_GER, file = "Captions_GER.sbv", sep="\n")

# Read the subtitles file and converts it into a subtools object
Subs_ASR <- read_subtitles("Captions_ASR.sbv", format = "subviewer") 
Subs_DE <- read_subtitles("Captions_DE.sbv", format = "subviewer")
Subs_GER <- read_subtitles("Captions_GER.sbv", format = "subviewer")

# Retrieve text data from the subtools object
Subtext_ASR <- get_raw_text(Subs_ASR)
Subtext_DE <- get_raw_text(Subs_DE)
Subtext_GER <- get_raw_text(Subs_GER)

# Display results
Subtext_ASR
Subtext_DE
Subtext_GER

#### Processing Subtitles (could also be done with Quanteda) ####
processed_tuber <- textProcessor(Subtext_GER, metadata = NULL, lowercase = TRUE, removestopwords = TRUE, removenumbers = TRUE, 
                          removepunctuation = TRUE, stem = TRUE, wordLengths = c(3, Inf), sparselevel = 1, language = "en", 
                          verbose = TRUE, onlycharacter = FALSE, striphtml = FALSE, customstopwords = NULL) # Cleaning up and converting to stm format
out_tuber <- prepDocuments(processed_tuber$documents, processed_tuber$vocab, processed_tuber$meta, lower.thresh = 0,
                     upper.thresh = Inf, subsample = NULL, verbose = TRUE) # Preparing processed texts; if there is more than one document, adjust lower.thresh

# Display results
out_tuber[["vocab"]]

# Simpler solution with the youtubecaption package (requires Anaconda)
# Put full URL into a variable
url <- "https://www.youtube.com/watch?v=3TNkWTRNNYE"
# Get captions for that URL and put it into another variable
caption <- get_caption(url)
# You will receive an error message because the default is English captions "en", but this video has none
# Try German captions
caption <- get_caption(url, language = "de")
# Show resulting dataframe
caption
# You will see that this are the manual German captions. 
# There is no way to select the automatically created German captions because they are also labeled as "de".
# Save the caption as an Excel file and open it right away:
get_caption(url = url, language = "de", savexl = TRUE, openxl = TRUE)


processed_caption <- textProcessor(caption, metadata = NULL, lowercase = TRUE, removestopwords = TRUE, removenumbers = TRUE, 
                           removepunctuation = TRUE, stem = TRUE, wordLengths = c(3, Inf), sparselevel = 1, language = "en", 
                           verbose = TRUE, onlycharacter = FALSE, striphtml = FALSE, customstopwords = NULL) # Cleaning up and converting to stm format
out_caption <- prepDocuments(processed_caption$documents, processed_caption$vocab, processed_caption$meta, lower.thresh = 0,
                           upper.thresh = Inf, subsample = NULL, verbose = TRUE) # Preparing processed texts; if there is more than one document, adjust lower.thresh
out_caption[["vocab"]]
