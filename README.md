# BAT0
short script to check batty status and print in in cli

Notice:

  If /sys/class/power_supply/BAT0 does not exist,
  you may have a different battery directory.

  If you are unable to find a correct directory within /sys/class,
  use acpi -b to obtain and parse your battery in information.

Install/Usage:

  If you do not have a home bin directory,

  mkdir ~/bin; cp ./bchrg ~/bin

  Otherwise, simply move the script into your bin directory.

  If you have not added your home directory to $PATH, append the
  following to your .bashrc/.profile,

  PATH="$HOME/bin:$PATH"

  Simplified:
  run  ./install.sh 
  
