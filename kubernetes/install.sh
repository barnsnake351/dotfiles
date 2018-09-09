#!/bin/sh

# Reset the completions file in the event a new version was installed via Brew
if [[ -d ${ZSH}/kubernetes ]]
then
    source ${ZSH}/kubernetes/completion.zsh
    _regenerate_k8s_completions
fi
