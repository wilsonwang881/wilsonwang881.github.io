---
title: Deploy using Travis CI or Not?
sidebar: false
date: 2019-09-28 18:14:11
modified: 2019-10-05 15:01:00
sidebar: false
tags:
- "Travis CI"
- website
categories:
- "Website Hosting"
---

## Background:

Previously the contents of the website were generated locally then pushed to a GitHub repository. Now Travis CI is used to generate static files instead of the local machine. 

<!--more-->

## After a few days:

Some API keys were exponsed in the configuration file for both the theme and the site. To improve security, those API keys were set as environmental variables. Using Travis CI does not allow user to access secured environmental variables and any attempt to access, or decode the encrypted environmental variables will result in a ```[secured]``` response.

![Travis ci adding env](travis_ci_add_environment_variables.PNG)

In the above screenshot, when adding environment variables to Travis CI, if the switch in the red box is toggled, the added environment variables are considered to be secured.

What I need to do is to replace some of the text in the configuration files with the values of the environmental variables. I do not wish to disclose te values of the environmental variables to anyone else other than me myself.

To use the free tier of Travis CI, one can register at [travis-ci.org](travis-ci.org). However, one can only access one's private repository using account registered at [travis-ci.com](travis-ci.com).

In conclusion, it is impossible to use the free tier of Travis CI while maintain a secure production environment if one hopes to dynamically modify the content of configuration files other than the configuration file, ```.travis.yml```, the one used for Travis CI.

## Conslusion:

I switched back to generate static files locally and the content of the configuration files and post markdown files in a private GitHub repository. A bash script was added to notify the Telegram channel when there is an update.