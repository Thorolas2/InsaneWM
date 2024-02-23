
# get_section(file)
function get_section {
    sed -r "s/^\[([a-zA-Z]+)\]((.|\n)*?)(?=\[[a-zA-Z]+\]|\z)/\1\n\2"
}

# get_property(file, section, property)
function get_property {
    :
}