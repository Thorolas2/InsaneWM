
# usage: ini_setproperty(file, property, value)
function ini_setproperty {
    sed -i -e "s/$2 = .*/$2 = $3/g" $1; 
}


#usage: toml_getproperty(file, property)
function toml_getproperty {
    echo "$(stoml "$1" "$2")"
}

#usage: toml_getpropertylist(file, property)
function toml_getpropertylist {
	index=1
	propertylist=""

	while :; do
		tmp="$(toml_getproperty "$1" "$2"-$index)"
		[ -z "$tmp" ] && break
		propertylist="$propertylist '$tmp'"
		((index++))	
	done

	echo "$propertylist"
}