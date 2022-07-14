#!/bin/sh

export HEXO_ALGOLIA_INDEXING_KEY=d8670c6577150217e7b773264106a786
hexo clean
hexo algolia

cp themes/next/_config.yml next_config.yml
rm -rf .deploy_git
hexo g 
hexo d 

TELEGRAM_TOKEN="864123846:AAGhtzQbkftrNRK3f_ptqgFeVDZKq4L4QKo"
TELEGRAM_CHAT_ID="-1001417572276" #"-358767224"

# Get the token from Travis environment vars and build the bot URL:
BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

# Set formatting for the message. Can be either "Markdown" or "HTML"
PARSE_MODE="Markdown"

# Define send message function. parse_mode can be changed to
# HTML, depending on how you want to format your message:
send_msg () {
    curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID \
        -d text="$1" -d parse_mode=${PARSE_MODE}
}

# Send message to the bot with some pertinent details about the job
# Note that for Markdown, you need to escape any backtick (inline-code)
# characters, since they're reserved in bash
send_msg "
[wilsonwang.org](wilsonwang.org) updated!
$1
"
