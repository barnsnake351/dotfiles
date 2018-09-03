#!/bin/sh

: ${BASH_SCRIPTS:="${HOME}/.bash_scripts"}

# Check for a valid go installation
[ "$(brew list go)" ] || return 0

# Configure GOHOME
GO_BASE_PATH="$(brew --prefix go)"
GOPATH="${HOME}/go"
GOBIN="${GOPATH}/bin"

go_exports="${BASH_SCRIPTS}/exports/99-go.exports"

[ $(echo "${PATH}" | grep ":${GO_BASE_PATH}/bin") ] || echo "export PATH=\"${PATH/:\/bin/:${GO_BASE_PATH}/bin:/bin}\"" >> "${go_exports}"
[ $(echo "${PATH}" | grep ":${GOBIN}") ] || echo "export PATH=\"${GOBIN}:${PATH}\"" >> "${go_exports}"
