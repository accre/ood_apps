# Wait for the Jupyter Notebook server to start
print_debug="yes"

DEBUG() {
	[ "${print_debug}" = "yes" ] && echo "DEBUG: $(date +"%Y-%m-%d %T") - ${1}"
}

DEBUG "Waiting for Jupyter Notebook server to open port ${port}..."
DEBUG "Starting wait in after.sh"
if wait_until_port_used "${host}:${port}" 600; then
	DEBUG "Discovered Jupyter Notebook server listening on port ${port}!"
	DEBUG "Ending wait in after.sh"
else
	DEBUG "Timed out waiting for Jupyter Notebook server to open port ${port}!"
	DEBUG "Ending wait in after.sh"
	pkill -P ${SCRIPT_PID}
	clean_up 1
fi
sleep 2
