#!/usr/bin/env bash

# prompt themeing

#added TITLEBAR for updating the tab and window titles with the pwd
case $TERM in
	xterm*)
	TITLEBAR="\[\033]0;\w\007\]"
	;;
	*)
	TITLEBAR=""
	;;
esac

function prompt_command() {
	PS1="${TITLEBAR}${orange}${reset_color}${bold_black}\u@\h${reset_color}:${green}\w${bold_blue}\[\$(scm_prompt_info)\]${reset_color}${normal}\$ "
}

# scm themeing
SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" ✓"
SCM_THEME_PROMPT_PREFIX="("
SCM_THEME_PROMPT_SUFFIX=")"

PROMPT_COMMAND=prompt_command;
