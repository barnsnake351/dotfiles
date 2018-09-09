#/bin/sh

: ${SPF13_SHORT_URL:=https://bit.ly/bsnake-vim}

curl -s ${SPF13_SHORT_URL} -L | sh
