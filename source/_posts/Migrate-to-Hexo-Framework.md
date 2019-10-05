---
title: Migrate to Hexo Framework
date: 2019-09-16 18:14:22
tags:
- Hexo
- website
---

I have seen people using the Hexo framework before and have planned to do so for a long time. Now it is the time.

<!--more-->

## Setup:

The name of the GitHub repository is set as **GitHub_username.github.io**.

## Prevent GitHub Domain Overwrite:

Add a **CNAME** file to the **source** folder at the root directory of the Hexo project. In the **CNAME** file, put the domain of the website.

## Add the README.md file:

GitHub will prompt users if no README.md file is found at the root directory. To resolve the issue, create a README.md file in the **source** folder at the root directory of the Hexo project and write something for the Hexo project or the website.

However, Hexo will render the **.md** files to generate HTML pages. To overwrite the setting, edit the **skip_render** option in the configuration file at the root directory of the Hexo project by adding the name of the file. No path is needed for the file and under this context, the name of the file is ```README.md```.

## Theme:

The theme used is [**Hexo NeXT**](https://theme-next.org/)
