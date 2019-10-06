#!/bin/sh

npm i
git clone https://github.com/theme-next/hexo-theme-next themes/next
cp next_config.yml themes/next/_config.yml 
git clone https://github.com/theme-next/theme-next-canvas-nest themes/next/source/lib/canvas-nest