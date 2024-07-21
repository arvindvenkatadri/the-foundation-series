---
date: "`r Sys.Date()`"
linkTitle: R for Artists
summary: An introductory course on data and visualization in R.
title: "\U0001F4CA R for Artists"
type: book
weight: 20
view: 2

---

{{< figure src="featured.jpg" >}}

## What you will learn

- Fundamental {{<hl>}}R programming skills{{</hl>}}
- {{<hl>}}Statistical concepts{{</hl>}} and how to apply them in practice
- Gain experience with the {{<hl>}}tidyverse{{</hl>}}, including data visualization with {{<hl>}}ggplot{{</hl>}} and data wrangling with {{<hl>}}dplyr{{</hl>}}
- Finding Data on the Web, and creating your own datasets
- Making Maps with {{<hl>}}tmap and mapview{{</hl>}}
- Plotting Networks with {{<hl>}}tidygraph{{</hl>}}


## Abstract

## Data, Domains, and Metaphors

We will understand the idea of data and types of variables in data. These will lead us to creating different kinds of graphs based on variable type, using R. We will look at diverse domains, such as Geography, Networks and Education and plot geometric visuals based on the data we find in these domains. This will help us not only appreciate the data but give us a view of the underlying realities and ideas in each of these domains. 

Using R in **RStudio** as an *Integrated Development Environment* is a crucial part of this journey. As is the paradigm of **tidy data** and the **tidyverse** method of programming in R. 


## Textbooks

We will be drawing material from a wide variety of sources for this course; as such, there is no single, required text book <em>per se</em>. 

Our exposition will draw upon [Robert Kabacoff's book on Data Visualization](https://rkabacoff.github.io/datavis/), and on [Hadley Wickham and Garett Grolemund's R for Data Science](https://r4ds.had.co.nz/). This latter book is an excellent choice for a personally owned hardcopy book on R! 

We will also use material from tutorials published by prominent members of the **#rstats** community, such as those by [Thomas Lin Perdersen](https://www.data-imaginist.com) (author of the **tidygraph** package) for Networks; [Martijn Tennekes](https://github.com/mtennekes/tmap) ( creator of **tmap** package) for Map-making; [Daniel Kallin](https://github.com/skanaar/nomnoml) (creator of the `nomnoml` package); and [Rich Iannone](https://github.com/rich-iannone/DiagrammeR) (creator of the `DiagrammeR` package ) for the Diagrams. 


## References

1. Jack Dougherty and Ilya Ilyankou, *Hands-On Data Visualization: Interactive Storytelling from Spreadsheets to Code*, <https://handsondataviz.org/>. Available free Online. 

1. Claus O. Wilke, *Fundamentals of Data Visualization*, <https://clauswilke.com/dataviz/>. Available free Online.   

1. Jonathan Schwabish, *Better Data Visualizations: A Guide for Scholars, Researchers, and Wonks, Columbia University Press, 2021. 

1. Alberto Cairo, *The Functional Art:An introduction to information graphics and visualization*, New Riders. 2013. ISBN-9780133041361.

1. Cole Nussbaumer Knaflic, *Storytelling With Data: A Data Visualization Guide for Business Professionals*, Wiley 2015. ISBN-9781119002253.

## Quick Lookup 

### Charts and Data

1. **Data Vis Project** <https://datavizproject.com/> Allows you to match data types and data-vis types!! Perfect!!

1. **Data Viz Catalogue** <https://datavizcatalogue.com/> Another good place to look for graphs that match your data!

1. **From Data-to-Viz**  <https://www.data-to-viz.com/#explore>

1. Financial Times **Visual Vocabulary Chart**. A great chart to match data to data-viz. [**PDF here**](/pdf/DataViz/FT4Schools_RGS.pdf) and Web version <https://ft-interactive.github.io/visual-vocabulary/>  

1. 72 types of Visualization for Data Stories <https://blog.gramener.com/types-of-data-visualization-for-data-stories/>

### Charting in R

1. **R Charts** <https://r-charts.com/>

1. **R Graph Gallery** <https://r-graph-gallery.com/index.html>




## Dataset Resources

1. A wide variety of graphics and datasets on global issues at **Our World in Data** <https://ourworldindata.org/>


1. Datasets at **calmcode.io** <https://calmcode.io/datasets.html>. Simple datasets that you should begin with.  


1. **Data.World** <https://data.world>. A very well organized easily searchable database of datasets *and* visualizations!

1. **The Harvard Dataverse** <https://dataverse.harvard.edu/>. A very large searchable database of datasets on a very wode set of topics. 

1. **IPUMS** <https://www.ipums.org/> Integrated Public Use Microdata Series (IPUMS) is the world's largest individual-level population database. IPUMS consists of microdata samples from United States (IPUMS-USA) and international (IPUMS-International) census records, as well as data from U.S. and international surveys. Data provided is integrated across time and space.*Health*, *Economics*, *Higher Education*, *Historical Data* and much more 

1. **Kaggle Datasets** <https://www.kaggle.com/datasets>
E.g. [Netflix Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)

1. **Data Is Plural** <https://www.data-is-plural.com/>. This a weekly newsletter of useful/curious datasets by Jeremy Singer-Vine. 

1. **Information is Beautiful** <https://informationisbeautiful.net/>
David McCandless' terrific information visualization site. All datasets used here are also available for download.

1. **India Data by Sector** <https://data.gov.in/sector>

1. The FBI's **Crime Data Explorer** (very US-centric) <https://crime-data-explorer.app.cloud.gov/pages/home>

1. Datasets at **538** ( *very* US-centric) <https://data.fivethirtyeight.com/>

1. **Open Data Network** ( again *very* US-centric) <https://www.opendatanetwork.com/>

1. **311-data.org** <https://www.311-data.org/>. Data about 311 calls in different parts of the US. (#311 is a complaints service that deals with non-crime / non-emergency related neighbourhood issues in the US)

1. **Google Dataset Search** <https://datasetsearch.research.google.com/>

1. **Github dataset search** <https://github.com/search?q=datasets>

1. **World Inequality Database**, <https://wid.world/>. Global data on income and wealth inequality. India specific data also available. 

1. **World Bank Open Data** <https://data.worldbank.org/>. A global collection of economic development data .

1. Jonathan Schwabish's **PolicyViz DataViz Catalogue**. <https://policyviz.com/resources/policyviz-data-visualization-catalog/> This is a spreadsheet that has links to data *and* images of visualizations that have been achieved with each of the datasets. Over *800* entries...see table below! (US centric, but very inspirational visualizations!), See the emebedded version below:

<p align="center"><iframe width="600" height="800" src="https://datastudio.google.com/embed/reporting/eb2fea55-8eeb-440f-9c56-e8278266a368/page/vZWQB" frameborder="0" style="border:0" allowfullscreen></iframe></p>


## Our Tools

### Chart Creation and Export

1. **Orange Data Mining** <https://orangedatamining.com/> Free software. Very intuitive, point-and-click, goes all the way from simple data-viz to ML!

1. **Datawrapper Academy** <https://academy.datawrapper.de/> A free browser-based tool, requires registration and login. 

1. **RAWGraphs** <https://app.rawgraphs.io/>  Another Free browser-based tool, no registration, no login. Simple interface too. 


### Story Telling with Charts

1. **Flourish Studio** <https://flourish.studio/> Beautiful and easy data visualization and storytelling

1. **Infogram** <https://infogram.com/> Create engaging infographics and reports in minutes

1.  **Visme** <https://www.visme.co/> Yet another...

