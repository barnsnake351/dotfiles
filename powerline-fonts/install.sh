#/bin/sh
#
# Install and configure the powerline font family

: ${PF_DIR:=~/.powerline-fonts}
if [ ! -d "${PF_DIR}" ]
then
    git clone git@github.com:barnsnake351/fonts.git --depth=1 "${PF_DIR}"
    pushd "${PF_DIR}"
    ./install.sh
    popd
fi
