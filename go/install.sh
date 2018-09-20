#!/bin/sh

# If go is installed configure and set the go dir
if [[ $(which go) ]]
then
    [[ ! -d "${PROJECTS}/go/bin" ]] && mkdir -p "${PROJECTS}/go/bin"
fi
