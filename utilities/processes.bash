
# usage: kill(process_name)
function process_kill {
	killall -q "$1"
}

# usage: kill_and_wait(process_name)
function process_waitkill {
    process_kill "$1"

	while pgrep -u $UID -x polybar >/dev/null; 
        do sleep 1; 
    done
}