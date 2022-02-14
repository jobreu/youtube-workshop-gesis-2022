# Workshop "Automatic Sampling and Analysis of YouTube Comments", GESIS 2022
Materials for the 2022 [*GESIS*](https://www.gesis.org/en/home/) *Training* workshop ["Automatic Sampling and Analysis of YouTube Comments"](https://training.gesis.org/?site=pDetails&child=full&pID=0x9BF8CE59341441148D9191B9CB54CA75)

[Johannes Breuer](https://www.johannesbreuer.com/) ([johannes.breuer@gesis.org](mailto:johannes.breuer@gesis.org), [\@MattEagle09](https://twitter.com/MattEagle09)); [Julian Kohne](https://www.juliankohne.com/) ([Julian.Kohne@gesis.org](mailto:Julian.Kohne@gesis.org), [\@JuuuuKoooo](https://twitter.com/JuuuuKoooo)); [M. Rohangis Mohseni](https://www.tu-ilmenau.de/en/media-psychology-and-media-design/team/dr-rohangis-mohseni/) ([Rohangis.Mohseni@tu-ilmenau.de](mailto:Rohangis.Mohseni@tu-ilmenau.de), [\@romohseni](https://twitter.com/romohseni))

[![](https://licensebuttons.net/l/by/3.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/) 
Please link to the [workshop GitHub repository](https://github.com/jobreu/youtube-workshop-gesis-2022)

---

# Workshop description

*YouTube* is the largest and most popular video platform on the internet. The producers and users of *YouTube* content generate huge amounts of data. These data are also of interest to researchers (in the social sciences as well as other disciplines) for studying different aspects of online media use and communication. Accessing and working with these data, however, can be challenging. In this workshop, we will first discuss the potential of *YouTube* data for research in the social sciences, and then introduce participants to different tools and methods for sampling and analyzing data from *YouTube*. We will then demonstrate and compare several tools for collecting *YouTube* data. Our focus for the main part of the workshop will be on using the [`tuber` package](https://soodoku.github.io/tuber/) for `R` to collect data via the [YouTube API](https://developers.google.com/youtube) and wrangling and analyzing the data in `R` (using various packages). Regarding the type of data, we will focus on user comments but also will also (briefly) look into other *YouTube* data, such as video statistics and subtitles. For the comments, we will show how to clean/process them in `R`, how to deal with emojis, and how to do some basic forms of automated text analysis (e.g., word frequencies, sentiment analysis). While we believe that *YouTube* data has great potential for research in the social sciences (and other disciplines), we will also discuss the unique challenges and limitations of using this data.

## Target group

The workshop is aimed at people who are interested in using *YouTube* data for their research. 

## Learning objectives

Participants will learn how they can use *YouTube* data for their research. They will get to know tools and methods for collecting *YouTube* data. By the end of the workshop, participants should be able to...
- automatically collect *YouTube* data
- process/clean it
- do some basic (exploratory) analyses of user comments

## Prerequisites

Participants should at least have some basic knowledge of `R` and, ideally, also the `tidyverse`. Basic `R` knowledge can, for example, be acquired through the *swirl* course "R Programming" (see https://swirlstats.com/) or the [*RStudio* Primer "Programming basics"](https://rstudio.cloud/learn/primers/1.2), both of which are available for free. There also are many brief online introductions to the `tidyverse`, such as this [blog post by Dominic Royé](https://dominicroye.github.io/en/2020/a-very-short-introduction-to-tidyverse/) or this [workshop by Olivier Gimenez](https://oliviergimenez.github.io/intro_tidyverse/#1).

For the exercises as well as for "coding along" with the slides, access to the *YouTube* API is required. Information on this can be found in the slides on the [*YouTube* API Setup](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/A0_YouTube_API_Setup/A0_YouTubeAPISetup.html).  

## Timetable

### Day 1

| Time          | Topic                                   |
| ------------- | --------------------------------------- |
| 10:00 - 11:00 | Introduction                            |
| 11:00 - 11:30 | *Break*                                 |
| 11:00 - 12:30 | The *YouTube* API                       | 
| 12:30 - 13:30 | *Lunch Break*                           | 
| 13:30 - 15:00 | Collecting data with `tuber` for `R`    | 
| 15:00 - 15:30 | *Break*                                 | 
| 15:30 - 17:00 | Processing and cleaning user comments   | 

### Day 2

| Time          | Topic                                   |
| ------------- | --------------------------------------- |
| 09:00 - 10:30 | Basic text analysis of user comments    |
| 10:30 - 11:30 | *Break*                                 |
| 11:00 - 12:00 | Sentiment analysis of user comments     | 
| 13:00 - 14:00 | *Lunch Break*                           | 
| 11:00 - 11:30 | Excursus: Retrieving video subtitles    | 
| 14:00 - 14:30 | *Break*                                 | 
| 14:30 - 16:00 | Practice session, questions, & outlook  | 

## Materials

### Slides

[A1 Introduction](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/A1_Introduction/A1_Intro.html)             

[A2 The YouTube API](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/A2_The_YouTube_API/A2_The_YouTube_API.html)

[A3 Collecting data with tuber](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/A3_Collecting_data_with_tuber/A3_Collecting_data_with_the_tuber_package_for_R.html)

[B1 Basic text analysis](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/B1_Basic_Text_Analysis/B1_Basic_Text_Analysis.html)

[B2 Sentiment analysis of user comments](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/B2_Sentiment_Analysis_of_User_Comments/B2_Sentiment_Analysis_of_User_Comments.html)

[B3 Excurus: Retrieving video subtitles](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/B3_Excursus_Retrieving_Video_Subtitles/B3_Retrieving_Video_Subtitles.html)

[B4 Outlook, Recap, Practice](https://jobreu.github.io/youtube-workshop-gesis-2022/slides/B4_Recap_Outlook_Practice/B4_Recap_Outlook_Practice.html)


### Exercises

[A2 YouTube API exercises](https://jobreu.github.io/youtube-workshop-gesis-2022/exercises/A2_The_Youtube_API_question.html)

[A3 tuber data collection exercises](https://jobreu.github.io/youtube-workshop-gesis-2022/exercises/A3_tuber_exercises_question.html)

[B1 Basic text analysis exercises](https://jobreu.github.io/youtube-workshop-gesis-2022/exercises/B1_Basic_text_analysis_exercises_question.html)

### Solutions

[A2 YouTube API exercise solutions](https://jobreu.github.io/youtube-workshop-gesis-2022/solutions/A2_The_Youtube_API_solution.html)

[A3 tuber data collection exercise solutions](https://jobreu.github.io/youtube-workshop-gesis-2022/solutions/A3_tuber_exercises_solution.html)

[B1 Basic text analysis exercise solutions](https://jobreu.github.io/youtube-workshop-gesis-2022/exercises/B1_Basic_text_analysis_exercises_solution.html)