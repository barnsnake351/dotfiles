#!/usr/bin/env bash

: ${SPF13_SHORT_URL:=https://bit.ly/bsnake-vim}

sh <(curl -s ${SPF13_SHORT_URL} -L)
