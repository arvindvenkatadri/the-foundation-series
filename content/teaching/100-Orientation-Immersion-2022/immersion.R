library(tidyverse)
library(ggalluvial)




dat <-
  tribble(
    ~day, ~roshan, ~arvind, ~minakshi, ~thread, ~score,

    "Day1", "Sensorial Map Portrait","OSM Treasure Hunt and GPS Art","Ways of Seeing", "Spatial", 20,

    "Day2","Instant sculpture","Cest ne Une Pipe and Objects that Sing","Gallery Walk","Metaphor", 10,

    "Day3", "World of Colour","I, Anagram","The Birthday of an Artist","Symmetry and Colour", 25,

    "Day4", "Finding Cracks","Copy Cats","Ways of Seeing","Shapes", 20,

    "Day5", "Flaneur", "Random Forests with Taylor Swift", "TBD1", "Types and Categories", 10,


    "Day6", "Time Observation", "The Social Network and How to Train your Dragon Mind", "TBD2", "Time and Space",10)



ggplot(data = dat,
       aes(axis2 = roshan, axis3 = arvind, axis4 = minakshi,
           y = score, fill = thread)) +
  geom_alluvium() +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)), size = 2) +
  scale_x_continuous(breaks = 1:3, labels = c("Roshan", "Arvind", "Minakshi")) +
  xlab("Faculty") +
  scale_fill_brewer(type = "qual", palette = "Set3") +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        panel.background = element_rect(fill = "white")
  )
