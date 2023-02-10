---
title: "\U0001F9ED Classical Statistical Models and Tests"
date: 14/Nov/2022
lastmod: "`r Sys.Date()`"
summary: "Using the Linear Model Idea to motivate Classical Stats Tests"
weight: 30
type: book
draft: true
image:
  caption: ""
  focal_point: "smart"
tags: 
  - Comparing Means and Proportions
  - Parametric and Non-Parametric Tests
editor_options: 
  markdown: 
    wrap: 72
---

![](featured.jpg)

# Introduction

In this set of modules we will explore Sampling, Summary Statistics,
Statistical Tests for data. As we discussed earlier, the purpose of
these tests is that we want to estimate **P**opulation **P**arameters,
using **S**ample **S**tatistics.

## So What Do Statistical Models Yield?

Each of the Statistical Models we will explore give access to the
following numbers: these are estimates of the *Parameters* of the
Population that underlies the particular *Sample* that we are
processing:

1.  **Point Estimate**: This is a **statistic** that we compute from the
    *Sample*. We wish to know how good an estimate this *point estimate*
    is of the *Population parameter*. E.g. We may take the *mean* of the
    sample values, and want know if this is a good estimate of the
    *population mean*.

2.  **Standard Error (SE)**: This is a measure of how much uncertainty
    remains in *point estimate*.

3.  **Confidence Intervals (CI)**: Usually we state that the *point
    estimate* is within $\pm something$ of the population parameter, at
    a certain level of **confidence**, say 90% or 95%. These CI are
    derived from our computation of the SE.

4.  **p-Value**: This is a computed measure that tells us how likely the
    *point estimate* is, under our skeptical assumption of the NULL
    Hypothesis. For instance, we may assume that the population mean is
    $0$ under the NULL Hypothesis and then assess the *p-value* of a
    sample-mean of say $0.04$ for example.

## Pedagogical Notes

Two ideas will make this set of modules a little different from more
conventional introductory statistics courses:

-   The use of *Linear Models* as the basis for understanding *all*
    statistics measures and tests.

-   The use of *Simulations*, rather than formulae, to calculate
    Statistics and perform Statistical Tests.

We will present the *Simulation* approach in a separate set of modules.
Let us quickly appreciate the *Linear Model* approach.

## The Linear Model Approach

***Common statistical tests are linear models (or: how to teach
stats)*** is a book written by **Jonas Lindeløv** (Reference 1). The
book beautifully demonstrates how many common statistical tests (such as
the t-test, ANOVA and chi-squared) are special cases of the linear
model. The book also demonstrates that many non-parametric tests, which
are needed when certain test assumptions do not hold, can be
approximated by linear models using the rank of values.

This approach offers a way to greatly simplify the teaching of
introductory statistics, using the simple model of the form
$y = a + b⋅x$ which is familiar to most students. This approach brings
coherence to a wide-range of statistical tests, which are usually taught
to students as independent tools with a potentially-overwhelming array
of names. The approach also helps to explain the intuition underlying
statistical tests, drawing on the familiar concept of linear
regressions, which emphasizes understanding over rote learning.

![Stats Tests as Linear Models](images/linear_tests_cheat_sheet.png)

The premise here is that **many common statistical tests are special
cases of the linear model** . So what *is* the linear model?

A **linear model** estimates the relationship between dependent variable
or "response" variable ($y$) and an explanatory variable or "predictor"
($x$). (It is also possible that there is more than one explanatory
variable: this is **multiple regression**. We will get there later). It
is assumed that the relationship is **linear**:

$$
 y = \beta_0 + \beta_1 \times x
$$

$\beta_0$ is the *intercept* and $\beta_1$ is the *slope* of the linear
fit, that **predicts** the value of $y$ based the value of $x$. Each
prediction leaves a small "residual" error between the actual and
predicted values. $\beta_0$ and $\beta_1$ are calculated based on
minimizing the **sum of square**s of these residuals, and hence this
method is called "ordinary least squares" regression. The net *area* of
all the shaded squares is minimized in the calculation of $\beta_0$ and
$\beta_1$.

### Using Linear Models for Hypothesis Tests

Using Linear Models for Stats Models is based on the idea of **Testing
of Hypotheses**. The Hypothesis Testing method typically defines a
***NULL Hypothesis*** where the statements read as "**there is no
relationship**" between the variables at hand, explanatory and
responses. The ***Alternative Hypothesis*** typically states that there
*is* a relationship between the variables.

We will use this one formulaic model for many diverse purposes:
estimation on single population means, comparison of two separate
population means, estimating a proportion, and comparing proportions
across populations. These are common business tasks that use statistics
tests.

For instance, we can model the *relationship* between two population
means as follows: is the parameter $\beta_1$ non-zero? Accordingly, in
fitting a linear model, we follow the process as follows:

1.  Make the following hypotheses:

    $$y = \beta_0 + \beta_1 *x$$

    $$Null\ Hypothesis\ H_0\ => \beta_1 = 0$$

    $$Alternative\ Hypothesis\ H_a => \beta_1 \ne 0$$

    $$x\ and\ y\ are\ linearly\ related$$

2.  We "assume" that $H_0$ is true.

3.  We calculate $\beta_1$. This is our *point estimate.*

4.  We then find how likely it is that \[$\beta_1 = Point\ Estimate\$\]
    **when the NULL Hypothesis** is **assumed** TRUE. This is the
    **p-value**.

5.  If that probability is **p \> 0.05**, we say we "cannot reject"
    $H_0$ and there is unlikely to be significant linear relationship.

6.  However, if **p \<= 0.05** we may reject the NULL hypothesis, and
    say that there could be a significant linear relationship, because
    $\beta_1 = Estimated\ Value$ by mere chance under $H_0$ is very
    small.

In the following set of modules, all statistical test will be posed
using this model where the desired result of the test will be the
subject of a Hypothesis Test based around a Linear Model. The parameter
we wish to estimate will be of course, either a $\beta_0$ or a $\beta_1$
!!

### Assumptions in Linear Models ("LINE")

1.  **L**: $\color{blue}{linear}$ relationship

2.  **I**: Errors are **independent** (across observations)

3.  **N**: y is $\color{red}{normally}$ distributed at each "level" of

    x\.

4.  **E**: equal variance at all levels of x. No *heteroscedasticity*.

![](images/ols_assumptions.png)

When these conditions are met, we use standard stats teststhat assume
these conditions as *parameters*. Hence these tests are called
**Parametric Tests**. When they are not met, we can use very similar
tests for our purposes. These are called, naturally, **Non-parametric
Tests**, which we will examine in due course.

## References

1.  *Common statistical tests are linear models (or: how to teach
    stats)* by [Jonas Kristoffer
    Lindeløv](https://lindeloev.github.io/tests-as-linear/)

2.  CheatSheet
    <https://lindeloev.github.io/tests-as-linear/linear_tests_cheat_sheet.pdf>

3.  *Common statistical tests are linear models: a work through* by
    [Steve Doogue](https://steverxd.github.io/Stat_tests/)

4.  Russ Poldrack. *Statistical Thinking for the 21st Century*, Chapter
    8 *Chapter 8 Resampling and simulation*.
    <https://statsthinking21.github.io/statsthinking21-core-site/resampling-and-simulation.html>

5.  [Jeffrey Walker "Elements of Statistical Modeling for Experimental
    Biology"](https://www.middleprofessor.com/files/applied-biostatistics_bookdown/_book/)

6.  Text: Diez, David M & Barr, Christopher D & Çetinkaya-Rundel, Mine:
    [OpenIntro Statistics](https://www.openintro.org/book/os/)

7.  Modern Statistics with R: From wrangling and exploring data to
    inference and predictive modelling by [Måns
    Thulin](http://www.modernstatisticswithr.com/)
