# Configure paths for Go

if [[ $(which go) ]] && [[ -d "${PROJECTS}/go/bin" ]]
then
    export GOPATH=$PROJECTS/go
    export PATH="$GOPATH/bin:$PATH"
fi
