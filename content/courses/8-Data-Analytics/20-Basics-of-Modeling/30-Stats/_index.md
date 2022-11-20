---
title: "\U0001F9ED Statistical Models and Tests"
date: "2021-11-09"
linkTitle: Statistical Models and Tests
summary: ""
weight: 30
type: book
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
Statistical Tests for data.

## Pedagogical Note

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

## The Linear Model

The premise here is that **many common statistical tests are special
cases of the linear model** . So what *is* the linear model?

A **linear model** estimates the relationship between dependent variable
or "response" variable ($y$) and an explanatory variable or "predictor"
($x$).(It is also possible that there is more than one explanatory
variable: this is **multiple regression**. We will get there later). It
is assumed that the relationship is **linear**:

$$
 y = \beta_0 + \beta_1 \times x
$$

$\beta_0$ is the *intercept* and $\beta_1$ is the *slope* of the linear
fit, that **predicts** the value of y based the value of x. Each
prediction leaves a small "residual" error between the actual and
predicted values. $\beta_0$ and $\beta_1$ are calculated based on
minimizing the **sum of square**s of these residuals, and hence this
method is called "ordinary least squares" regression. The net *area* of
all the shaded squares is minimized in the calculation of $\beta_0$ and
$\beta_1$.

## Linear Models as Hypothesis Tests

Using Linear Models for Stats Models is based on the idea of **Testing
of Hypotheses**. The Hypothesis Testing method typically defines a
***NULL Hypothesis*** where the statements read as "**there is no
relationship**" between the variables at hand, explanatory and
responses. The ***Alternative Hypothesis*** typically states that there
*is* a relationship between the variables.

The *relationship* is based upon the parameter $\beta_1$ being non-zero.
Accordingly, in fitting a linear model, we follow the process as
follows:

1.  Make the following hypotheses: $$
    y = \beta_0 + \beta_1 \times x\\
    $$ $$
    NULL\\ Hypothesis\\ H_0 =\> x\\ and\\ y\\ are\\ unrelated.\\ (\beta_1 =
    0)
    $$

$$
y = \beta_0 + \beta_1 \times x\\\\
$$ $$
Alternate\\ Hypothesis\\ H_1 =\> x\\ and\\ y\\ are\\ linearly\\
related\\ (\beta_1 \ne 0)
$$

1.  We "assume" that $H_0$ is true.

2.  We calculate $\beta_1$.

3.  We then find probability **p** that
    \[$\beta_1 = Estimated\\ Value$\] **when the NULL Hypothesis** is
    **assumed** TRUE. This is the **p-value**.

4.  If that probability is **p \> 0.05**, we say we "cannot reject"
    $H_0$ and there is unlikely to be significant linear relationship.

5.  However, if **p \<= 0.05** can we reject the NULL hypothesis, and
    say that there could be a significant linear relationship,because
    $\beta_1 = Estimated\\ Value$ by mere chance under $H_0$ is very
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
    x.

4.  **E**: equal variance at all levels of x. No *heteroscedasticity*.

![](images/ols_assumptions.png)

## References

1.  *Common statistical tests are linear models (or: how to teach
    stats)* by [Jonas Kristoffer
    Lindeløv](https://lindeloev.github.io/tests-as-linear/)

2.  CheatSheet
    <https://lindeloev.github.io/tests-as-linear/linear_tests_cheat_sheet.pdf>

3.  *Common statistical tests are linear models: a work through* by
    [Steve Doogue](https://steverxd.github.io/Stat_tests/)

4.  [Jeffrey Walker "Elements of Statistical Modeling for Experimental
    Biology"](https://www.middleprofessor.com/files/applied-biostatistics_bookdown/_book/)

5.  Text: Diez, David M & Barr, Christopher D & Çetinkaya-Rundel, Mine:
    [OpenIntro Statistics](https://www.openintro.org/book/os/)

6.  Modern Statistics with R: From wrangling and exploring data to
    inference and predictive modelling by [Måns
    Thulin](http://www.modernstatisticswithr.com/)
