#
# ~/.zprofile
#

# Start x server and exit from current terminal session
# This prevents users accessing this terminal if x were to crash
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx && exit
fi
