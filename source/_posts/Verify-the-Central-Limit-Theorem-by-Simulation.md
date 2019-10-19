---
title: Verify the Central Limit Theorem by Simulation
mathjax: true
sidebar: false
date: 2019-10-08 23:53:47
tags:
- coursework
- coding
- Python
categories:
- Coursework
---

Assignment for ECEN 646 Homework 5 Problem 4. Coded in **Python**.

<!--more-->

## Problem:

Let $\\{ X_i \\}_{i≥1}$ be i.i.d. uniform (0, 1) random variables. Compute the standard deviation $\sigma$ of $X_i$ and define

$$ Z_N = \sum_{i=1}^N = \frac{X_i - E[X_i]}{\sigma\sqrt{N}} $$

Plot the empirical distribution functions (based on $10^4$ random variables) for $Z_{10}$, $Z_{100}$ and $Z_{1000}$. On the same figure plot the distribution function of the standard normal random variable.

## Code:

```python
import matplotlib.pyplot as plt
import random
from random import seed
from statistics import *
from scipy.stats import norm

def z_n_calc(n):
    root_n = pow(n, 0.5)
    seed()
    num_array = [random.uniform(0,1) for _ in range(n)]
    expectation = sum(num_array)/n
    stdeviation = stdev(num_array)
    res = 0
    
    for i in range(0, n):
        res = res + (num_array[i]-expectation)/(stdeviation*root_n)

    return res

def sample_generator(n):
    return [z_n_calc(n) for _ in range(10000)]

def norm_cdf_generator(array_in):
    return [norm.cdf(x) for x in array_in]
    
    
y_array = [x/10000.0 for x in range(10000)]

# Z10
x_array_10 = sorted(sample_generator(10))
plt.figure()
# plt.axis([-2*(10**(-13)),2*(10**(-13)),0,1])
plt.plot(x_array_10, y_array, label='Z_10')
plt.plot(x_array_10, norm_cdf_generator(x_array_10))
plt.legend()

# Z100
x_array_100 = sorted(sample_generator(100))
plt.figure()
# plt.axis([-2*(10**(-13)),2*(10**(-13)),0,1])
plt.plot(x_array_100, y_array, label='Z_100')
plt.plot(x_array_100, norm_cdf_generator(x_array_100))
plt.legend()

# Z1000
x_array_1000 = sorted(sample_generator(1000))
plt.figure()
plt.plot(x_array_1000, y_array, label='Z_1000')
plt.plot(x_array_1000, norm_cdf_generator(x_array_1000))
plt.legend()

# All together
plt.figure()
plt.plot(x_array_10, y_array, label='Z_10')
plt.plot(x_array_100, y_array, label='Z_100')
plt.plot(x_array_1000, y_array, label='Z_1000')
plt.plot(x_array_1000, norm_cdf_generator(x_array_10), label='Standard normal')
plt.legend()

plt.ylabel('CDF')
plt.show()
```

## Plot:

![Z_10 plot](Z_10.png)

Z_10 plot

![Z_100 plot](Z_100.png)

Z_100 plot

![Z_1000 plot](Z_1000.png)

Z_1000 plot

![All together plot](All.png)

All plot

## Link:

[GitHub](https://github.com/wilsonwang881/ECEN646_HW5_P4)
