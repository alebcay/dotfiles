function clean_win_title() {
    echo -ne "\e]0;\a"
}

precmd_functions+=("clean_win_title")
