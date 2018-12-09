#!/usr/bin/env bash
# atlemagnussen

reset="$(tput sgr0)"
color0="$(tput setaf 0)"
color1="$(tput setaf 1)"
color2="$(tput setaf 2)"
color3="$(tput setaf 3)"
color4="$(tput setaf 4)"
color5="$(tput setaf 5)"
color6="$(tput setaf 6)"
color7="$(tput setaf 7)"
color8="$(tput setaf 8)"
color9="$(tput setaf 9)"
color10="$(tput setaf 10)"
color11="$(tput setaf 11)"
color12="$(tput setaf 12)"
color13="$(tput setaf 13)"
color14="$(tput setaf 14)"
color15="$(tput setaf 15)"
echo "using tput setaf"
echo "${color0}color0-black${reset}"
echo "${color1}color1-red${reset}"
echo "${color2}color2-green${reset}"
echo "${color3}color3-yellow${reset}"
echo "${color4}color4-blue${reset}"
echo "${color5}color5-magenta${reset}"
echo "${color6}color6-cyan${reset}"
echo "${color7}color7-white${reset}"
echo "${color8}color8-bright-black${reset}"
echo "${color9}color9-bright-red${reset}"
echo "${color10}color10-bright-green${reset}"
echo "${color11}color11-bright-yellow${reset}"
echo "${color12}color12-bright-blue${reset}"
echo "${color13}color13-bright-magenta${reset}"
echo "${color14}color14-bright-cyan${reset}"
echo "${color15}color15-bright-white${reset}"

reset="$(tput sgr0)"
bold="$(tput bold)"
black="$(tput setaf 0)"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
yellow="$(tput setaf 3)"
blue="$(tput setaf 4)"
magenta="$(tput setaf 5)"
cyan="$(tput setaf 6)"
white="$(tput setaf 7)"
brightblack="$(tput setaf 8)"
brightred="$(tput setaf 9)"
brightgreen="$(tput setaf 10)"
brightyellow="$(tput setaf 11)"
brightblue="$(tput setaf 12)"
brightmagenta="$(tput setaf 13)"
brightcyan="$(tput setaf 14)"
brightwhite="$(tput setaf 15)"
echo "using tput setaf 2"
echo "${black}black${reset}"
echo "${red}red${reset}"
echo "${green}green${reset}"
echo "${yellow}yellow${reset}"
echo "${blue}blue${reset}"
echo "${magenta}magenta${reset}"
echo "${cyan}cyan${reset}"
echo "${white}white${reset}"
echo "${brightblack}bright-black${reset}"
echo "${brightred}bright-red${reset}"
echo "${brightgreen}bright-green${reset}"
echo "${brightyellow}bright-yellow${reset}"
echo "${brightblue}bright-blue${reset}"
echo "${brightmagenta}bright-magenta${reset}"
echo "${brightcyan}bright-cyan${reset}"
echo "${brightwhite}bright-white${reset}"


echo "${brightred}brigh tred${reset} is the same as ${red}${bold}bold red${reset}"

cardinal="$(tput setaf 197)"
cornflowerblue="$(tput setaf 69)"
skyblue="$(tput setaf 117)"
yellow2="$(tput setaf 190)"

echo "some other colors from 256:"
echo "${cardinal}cardinal${reset}"
echo "${cornflowerblue}cornflowerblue${reset}"
echo "${skyblue}skyblue${reset}"
echo "${yellow2}yellow2${reset}"

function get_col() {
    echo "\e[$1m"
}
function get_col2() {
    echo "\e[38;5;$1m"
}

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

echo "using \e["
echo -e "${default}default"
echo -e "${black}black"
echo -e "${white}white"
echo -e "${red}red"
echo -e "${red_bright}red_bright"
echo -e "${green}green"
echo -e "${green_bright}green_bright"
echo -e "${yellow}yellow"
echo -e "${yellow_bright}yellow_bright"
echo -e "${blue}blue"
echo -e "${blue_bright}blue_bright"
echo -e "${magenta}magenta"
echo -e "${magenta_bright}magenta_bright"
echo -e "${cyan}cyan"
echo -e "${cyan_bright}cyan_bright"
echo -e "${gray}gray"
echo -e "${gray_bright}gray_bright"

cardinal=$(get_col2 197)
cornflowerblue=$(get_col2 69)
skyblue=$(get_col2 117)
yellow2=$(get_col2 190)

echo -e "${cardinal}cardinal"
echo -e "${cornflowerblue}cornflowerblue"
echo -e "${skyblue}skyblue"
echo -e "${yellow2}yellow2"
echo -e "${default}default"
