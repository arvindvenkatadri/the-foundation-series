---
title: "\U0001F9ED Basics of Statistical Modeling"
date: "2022-11-09"
lastmod: "`r Sys.Date()`"
summary: ""
weight: 20
type: book
image:
  caption: "Photo by Mikael Blomkvist: https://www.pexels.com/photo/laptop-beside-a-ceramic-vase-6483626/"
  focal_point: "smart"
editor_options: 
  markdown: 
    wrap: 72
---

![](featured.jpg)

## Introduction

In this set of modules we will explore Data, understand what types of
data variables there are, and the kinds of statistical tests and
visualizations we can create with them.

## The Big Ideas in Stats

Steven Stigler is the author of the book "*The Seven Pillars of
Statistical Wisdom*". The Big Ideas in Statistics from that book are:

1.  Aggregation

    > The first pillar I will call Aggregation, although it could just
    > as well be given the nineteenth-century name, "The Combination of
    > Observations," or even reduced to the simplest example, taking a
    > mean. Those simple names are misleading, in that I refer to an
    > idea that is now old but was truly revolutionary in an earlier
    > day---and it still is so today, whenever it reaches into a new
    > area of application. How is it revolutionary? By stipulating that,
    > given a number of observations, you can actually gain information
    > by **throwing information away**! In taking a simple arithmetic
    > mean, we discard the individuality of the measures, subsuming them
    > to one summary.

2.  Information

    > In the early eighteenth century it was discovered that in many
    > situations the **amount of information** in a set of data was only
    > proportional to the **square root** of the number n of
    > observations, not the number n itself.

3.  Likelihood

    > By the name I give to the third pillar, Likelihood, I mean the
    > calibration of inferences with the use of probability. The
    > simplest form for this is in **significance testing** and the
    > common **P-value**, but as the name "Likelihood" hints, there is a
    > wealth of associated methods, many related to parametric families
    > or to Fisherian or Bayesian inference.

4.  Intercomparison

    > It represents what was also once a radical idea and is now
    > commonplace: that statistical comparisons do not need to be made
    > with respect to an exterior standard but can often be made in
    > terms **interior to the data** themselves. The most commonly
    > encountered examples of intercomparisons are Student's **t-tests**
    > and the tests of the **analysis of variance**.

5.  Regression

    > I call the fifth pillar Regression, after Galton's revelation of
    > 1885, explained in terms of the bivariate normal distribution.
    > Galton arrived at this by attempting to devise a mathematical
    > framework for Charles Darwin's theory of natural selection,
    > overcoming what appeared to Galton to be an intrinsic
    > **contradiction in the theory**: selection required increasing
    > diversity, in contradiction to the appearance of the population
    > stability needed for the definition of species.

6.  Design of Experiments and Observations

    > The sixth pillar is Design, as in "Design of Experiments," but
    > conceived of more broadly, as an ideal that can discipline our
    > thinking in even observational settings.Starting in the late
    > nineteenth century, a new understanding of the topic appeared, as
    > Charles S. Peirce and then Fisher discovered the extraordinary
    > role **randomization** could play in inference.

7.  Residuals

    > The most common appearances in Statistics are our model
    > diagnostics (**plotting residuals**), but more important is the
    > way we explore high-dimensional spaces by fitting and comparing
    > **nested models**.

In our work with Statistical Models, we will be working with all except
Idea 6 above.

## What is a Statistical Model?

From Daniel Kaplan's book:

"Modeling" is a process of **asking questions**. "Statistical" refers in
part to data -- the statistical models you will construct will be rooted
in data. But it refers also to a distinctively modern idea: that *you
can measure what you don't know and that doing so contributes to your
understanding.*

The conclusions you reach from data depend on the **specific questions**
you ask.

The word "modeling" highlights that **your goals, your beliefs, and your
current state of knowledge** all influence your analysis of data.

Similarly, in statistical modeling, you examine your data to see whether
they are consistent with the **hypotheses that frame your understanding
of the system** under study.

## Uses and Types of Statistical Models

There are three main uses for statistical models. They are closely
related, but distinct enough to be worth enumerating.

> **Description**. Sometimes you want to describe the range or typical
> values of a quantity. For example, what's a "normal" white blood cell
> count? Sometimes you want to describe the relationship between things.
> Example: What's the relationship between the price of gasoline and
> consumption by automobiles?
>
> **Classification or prediction**. You often have information about
> some observable traits, qualities, or attributes of a system you
> observe and want to draw conclusions about other things that you can't
> directly observe. For instance, you know a patient's white blood-cell
> count and other laboratory measurements and want to diagnose the
> patient's illness.
>
> **Anticipating the consequences of interventions**. Here, you intend
> to do something: you are not merely an observer but an active
> participant in the system. For example, people involved in setting or
> debating public policy have to deal with questions like these: To what
> extent will increasing the tax on gasoline reduce consumption? To what
> extent will paying teachers more increase student performance?

The appropriate form of a model depends on the purpose. For example, a
model that diagnoses a patient as ill based on an observation of a high
number of white blood cells can be sensible and useful. But that same
model could give absurd predictions about intervention: Do you really
think that lowering the white blood cell count by bleeding a patient
will make the patient better?

To anticipate correctly the effects of an intervention you need to get
**the direction of cause and effect** correct in your models. But for a
model used for classification or prediction, it may be unnecessary to
represent causation correctly. Instead, other issues, e.g., the
reliability of data, can be the most important. One of the thorniest
issues in statistical modeling -- with tremendous consequences for
science, medicine, government, and commerce -- is **how you can
legitimately draw conclusions about interventions from models based on
data collected without performing these interventions.**

### The Intent of Modelling

From Daniel T. Kaplan's book:

1.  Statistics is about **variation**. Describing and interpreting
    variation is a major goal of statistics.

2.  You can create empirical, mathematical descriptions not only of a
    single trait or variable but also of the relationships **between**
    two or more traits. (Empirical means based on measurements, data,
    observations.)

3.  Models let you split variation into components: **"explained"**
    versus **"unexplained."** How to measure the size of these
    components and how to compare them to one another is a central
    aspect of statistical methodology. Indeed, this provides a
    definition of statistics:

    > Statistics is the explanation of variation in the context of what
    > remains unexplained.

4.  By collecting data in ways that require care but are quite feasible,
    you can estimate how reliable your descriptions are, e.g., whether
    it's plausible that you should see similar relationships if you
    collected new data. This notion of reliability is very narrow and
    there are some issues that depend critically on the context in which
    the data were collected and the correctness of assumptions that you
    make about how the world works.

5.  Relationships between pairs of traits can be studied in isolation
    only in special circumstances. In general, to get valid results it
    is necessary to study entire systems of traits simultaneously.
    Failure to do so can easily lead to conclusions that are grossly
    misleading.

6.  Descriptions of relationships are often subjective -- they depend on
    choices that you, the modeler, make. These choices are generally
    rooted in your own beliefs about how the world works, or the
    theories accepted as plausible within some community of inquiry.

7.  If data are collected properly, you can get an indication of whether
    the data are consistent or inconsistent with your subjective beliefs
    or -- and this is important -- whether you don't have enough data to
    tell either way.

8.  Models can be used to check out the sensitivity of your conclusions
    to different beliefs. People who disagree in their views of how the
    world works often may not be able to reconcile their differences
    based on data, but they will be able to decide objectively whether
    their own or the other party's beliefs are reasonable given the
    data.

9.  Notwithstanding everything said above about the strong link between
    your prior, subjective beliefs and the conclusions you draw from
    data, by collecting data in a certain context -- experiments -- you
    can dramatically simplify the interpretation of the results. It's
    actually possible to remove the dependence on identified subjective
    beliefs by intervening in the system under study experimentally.

### Types of Models

Let us look at the famous dataset pertaining to Francis Galton's work on
the heights of children and the heights of their parents. We can create
4 kinds of models based on the *types of variables* in that dataset.

![](models.png)

Our method in this set of modules is to take **the modern view that
*all* these models can be viewed from a standpoint of the *Linear
Model*, also called *Linear Regression* \$ y = \beta_1 \times x +
\beta_0 \$** . For example, it is relatively straightforward to imagine
Plot B (Quant vs Quant ) as an example of a Linear Model, with the
dependent variable modelled as $y$ and the independent one as $x$. We
will try to work up to the intuition that this model can be used to
understand all the models in the Figure.

## Degrees of Freedom

TBD

## Effect Size

An *effect size* tells how the output of a model changes when a simple
change is made to the input.

Effect sizes always involve two variables: a response variable and a
single explanatory variable. Effect size is always about a *model*. The
model might have one explanatory variable or many explanatory variables.
Each explanatory variable will have its own effect size, so a model with
multiple explanatory variables will have multiple effect sizes.

# References

1.  Tihamér von Ghyczy, *The Fruitful Flaws of Strategy Metaphors*.
    Harvard Business Review, 2003.
    <https://hbr.org/2003/09/the-fruitful-flaws-of-strategy-metaphors>

2.  Daniel T. Kaplan, *Statistical Models (second edition)*. Available
    online. <https://dtkaplan.github.io/SM2-bookdown/>

3.  Daniel T. Kaplan, *Compact Introduction to Classical
    Inference*, 2020. Available Online.
    <https://dtkaplan.github.io/CompactInference/>

4.  Daniel T. Kaplan and Frank Shaw, *Statistical Modeling:
    Computational Technique*. Available online
    <https://www.mosaic-web.org/go/SM2-technique/>

5.  Jonas Kristoffer Lindeløv, Common statistical tests are linear
    models (or: how to teach stats)
    <https://lindeloev.github.io/tests-as-linear/>
