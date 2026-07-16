function clean_win_title() {
    echo -ne "\e]0;\a\e\\"
}

function set_win_title() {
    local title
    title=$(print -Pn "%n@%m: %~")
    echo -ne "\e]0;${title}\e\\"
}

precmd_functions+=("clean_win_title" "set_win_title")
