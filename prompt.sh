#!/usr/bin/env bash
# script to set bash prompt
# link it up by sourcing to this file
# @atlemagnussen
function get_col() {
    echo "\e[$1m"
}
function get_col2() {
    echo "\e[38;5;$1m"
}
function git_prompt() {
    # known 256 terminals: "xterm-256color", "st-256color"
    if [[ $TERM == *"256col"* ]]; then
        many_colors_mode=true
    fi

    # colors
    bold=$(get_col 1)
    reset=$(get_col 0)
    default=$(get_col 39)
    black=$(get_col 30)
    white=$(get_col 97)
    red=$(get_col 31)
    red_bright=$(get_col 91)
    green=$(get_col 32)
    green_bright=$(get_col 92)
    yellow=$(get_col 33)
    yellow_bright=$(get_col 93)
    blue=$(get_col 34)
    blue_bright=$(get_col 94)
    magenta=$(get_col 35)
    magenta_bright=$(get_col 95)
    cyan=$(get_col 36)
    cyan_bright=$(get_col 96)
    gray=$(get_col 90)
    gray_bright=$(get_col 37)
    
    if [ "$many_colors_mode" = true ]; then
        cardinal=$(get_col2 197)
        cornflowerblue=$(get_col2 69)
        skyblue=$(get_col2 117)
        yellow2=$(get_col2 190)
    else
        cardinal="${red_bright}"
        cornflowerblue="${blue_bright}"
        skyblue="${cyan_bright}"
        yellow2="${yellow_bright}"
    fi
    
    defaultPS1="[${cardinal}\u${default}:${cornflowerblue}\h${yellow2}${bold}@${default}${skyblue}\w${reset}]"

    # python venv
    if [[ -n "$VIRTUAL_ENV" ]]; then
        PS1temp="${yellow}(${VIRTUAL_ENV##*/})${reset} $defaultPS1"
    else
        PS1temp="$defaultPS1"
    fi

    # git status
    local git_status_fields=($("$__GIT_STATUS_CMD" 2>/dev/null))
    local GIT_BRANCH=${git_status_fields[0]}
    local GIT_REMOTE=${git_status_fields[1]}
    if [[ -n "$GIT_BRANCH" ]]; then
        PS1temp="$PS1temp ${bold}${green}($GIT_BRANCH $GIT_REMOTE)${reset}"
    fi

    local GIT_UPSTREAM=${git_status_fields[2]}

    local GIT_STAGED=${git_status_fields[3]}
    if [[ -n "$GIT_STAGED" ]]; then
         PS1temp="$PS1temp${green} $GIT_STAGED${reset}"
    fi

    local GIT_CONFLICTS=${git_status_fields[4]}
    if [[ -n "$GIT_CONFLICTS" ]] && [[ "$GIT_CONFLICTS" != "0" ]]; then
        PS1temp="$PS1temp${yellow}${bold} ✖$GIT_CONFLICTS${reset}"
    fi

    local GIT_CHANGED=${git_status_fields[5]}
    if [[ -n "$GIT_CHANGED" ]]; then
        PS1temp="$PS1temp${magenta}${bold} $GIT_CHANGED${reset}"
    fi

    local GIT_UNTRACKED=${git_status_fields[6]}
    if [[ -n "$GIT_UNTRACKED" ]]; then
        PS1temp="$PS1temp${red}${bold} $GIT_UNTRACKED${reset}"
    fi

    local GIT_STASHED=${git_status_fields[7]}
    if [[ -n "$GIT_STASHED" ]] && [[ "$GIT_STASHED" != "0" ]]; then
        PS1temp="$PS1temp${yellow}${bold} ⚑$GIT_STASHED${reset}"
    fi

    PS1="$PS1temp \n$ "
}

# MAIN FUNCTIONALITY

__GIT_STATUS_CMD="$HOME/.bashprompt/gitstatus.sh"
PROMPT_COMMAND=git_prompt
