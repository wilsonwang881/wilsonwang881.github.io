---
title: Introduction to Formal Verification Project
sidebar: false
date: 2021-12-29 13:57:19
tags:
- coursework
categories:
- Courses
---

The aim of the project is to implement a system that simulates vehicle movements in a grid zone and verify the implementation of the system to meet design specifications. 
GitHub repo is available [here](https://github.com/wilsonwang881/ECEN689_Formal_Verification_Project).

<!--more-->

The following animation shows how vehicles within this system move. 
Statistics on the left show the current throughput, stale vehicles, collisions, U-turns, red light violations and the elapsed time.

<figure>
    <img style="background:none; border:none; box-shadow:none;" width="100%" src="demo.gif"/>
    <figcaption style="text-align: center;"></figcaption>
</figure>

The verification phase of the project is done with Spin and Promela. 
Spin is a tool for multi-thread application verification.
To use spin, the application to be verified should be re-coded using Promela.
The re-coded application then compiles and runs in Spin.

For more details, including design specifications and implementation details, refer to the README in the GitHub repo.