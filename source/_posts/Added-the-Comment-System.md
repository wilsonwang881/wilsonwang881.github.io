---
title: Added the Comment System
date: 2019-09-19 12:29:12
modified: 2019-09-26 22:04:00
tags:
- website
---

The comment system used is [Gitalk](https://gitalk.github.io/). Many posts are available online for how to do this. The official guide is available [here](https://theme-next.org/docs/third-party-services/comments).

<!--more-->

The previously used comment system is Disqus. However, Disqus is blocked in certain regions of the world.

The Hexo theme used is NeXT which supports Gitalk natively. One only needs to change the **_config.yml** file for the NeXT theme.

Gitalk uses GitHub repositories' issue feature to function as a comment system. To comment on the site, a GitHub account is needed. To use Gitalk to support the comment system, custom token is needed for authroization.

Prior to allow comments on certain article and after the article is published, the owner needs to open the issue on the website. Simply go to the deployed site and click on the button in the comment area, login with GitHub username and password and the comment area should appear. A GitHub issue stored in the repository should appear as well.
