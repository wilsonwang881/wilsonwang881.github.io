---
title: HDL Editor Setup
sidebar: false
date: 2019-10-04 20:54:04
tags:
- project
- F#
- npm
- Fable
categories:
- "HDL Editor"
---

## Rationale:

The project intends to provide a simple solution for those who wish to generate structured Verilog HDL code from a GUI and is suitable for those who just start working with FPGA and Verilog HDL. The implementation intends to use both the rich ecosystem of JavaScript and the feature of static typing. The ***[Electron](https://electronjs.org/)*** framework is used for generating a nice GUI and the ***[Fable](https://fable.io/)*** project is used to transpile F# to JavaScript.

<!--more-->

## Software Needed:

Install the following software first. The OS used is Windows 10.

* ***Microsoft Visual Studio***. It is used for arranging files in F# projects. Note it is not used to build projects.

* ***Atom*** or any text editor of your choice.

* A command line interface. I am using ***[Git Bash](https://gitforwindows.org/)***.

* ***[Node.js](https://nodejs.org/en/download/)***.

* ***[Paket](http://fsprojects.github.io/Paket/)***.

The following software is included in ***package.json*** and can be installed via ```npm install```. Note the list below is ***Not*** an exhaustive listing of the npm packages used in the project.

* ***[Electron](https://electronjs.org/)***.

* ***[Webpack](https://webpack.js.org/)***.

* ***[fable-loader](https://www.npmjs.com/package/fable-loader)***.

* ***[fable-compiler](https://www.npmjs.com/package/fable-compiler)***.

## Links to relavent posts and websites:

[Link to the development log](https://wilsonwang.org/2019/09/27/HDL-Editor-Development-Log/)

[Link to the project website](https://hdleditor.net)

[Link to the project GitHub repository](https://github.com/wilsonwang881/HDL_Editor_Project)

