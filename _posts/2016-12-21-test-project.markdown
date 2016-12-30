---
title: "Adhesion Random Walk Project"
layout: post
tag: adhesion
date: 2016-12-30 12:01
projects: true
author: adrs

---

## Introduction

$$
\begin{equation}
    \frac{\partial u}{\partial t} = D \frac{\partial^2 u}{\partial x^2}
        - \frac{\partial}{\partial x} \left( u \frac{\phi}{R} 
        \int_{-R}^{R} u(x + r) \Omega(r) \mathrm{d} r \right)
\end{equation}
$$

## Progress

* [Derivation]({{ site.url }}{% post_url 2016-12-20-AdhesionRandomWalk %}) of the non-local adhesion model from a space-jump process
