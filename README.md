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

Participants should at least have some basic knowledge of `R` and, ideally, also the `tidyverse`. Basic `R` knowledge can, for example, be acquired through the [*swirl* course “R Programming”](see https://swirlstats.com/) or the [*RStudio* Primer “Programming basics“]((https://rstudio.cloud/learn/primers/1.2)), both of which are available for free. There also are many brief online introductions to the `tidyverse`, such as the blog posts by [Martin Frigaard](http://www.storybench.org/getting-started-with-tidyverse-in-r/) or [Dominic Royé](https://dominicroye.github.io/en/2020/a-very-short-introduction-to-tidyverse/).

## Timetable