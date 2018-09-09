#!/bin/sh

# Reset the completions file in the event a new version was installed via Brew
[[ -d ${ZSH}/docker && $(which docker) ]] && source ${ZSH}/docker/completion.zsh
