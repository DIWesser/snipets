trim_white_space() {
    local i="$*"
    # remove leading whitespace characters
    i="${i#"${i%%[![:space:]]*}"}"
    # remove trailing whitespace characters
    i="${i%"${i##*[![:space:]]}"}"
    printf "$i"
}

trim_white_space
