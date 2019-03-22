#!/bin/bash
#########################################################################################################################################################
#
# ABOUT THIS SCRIPT
#
# NAME
#   forcePWchange.sh
#
# TRIGGER
#   Run by Jamf as sudo
#
#########################################################################################################################################################
#
#
# HISTORY
#
#   REVISION 1.0
#
#   -   Jake Bilyak, City & County of San Francisco Department of Technology, 10/16/2018
#
#########################################################################################################################################################
# This script will set force a user named within the JSS parameter 4 value to change their password upon next login.

# Define Variable
userToModify=$4     #Enter local username in JSS Parameter Value 4

# Execute PW Policy Command
pwpolicy -u $userToModify -setpolicy "newPasswordRequired=1"
echo $?     #Successfully implemented password policy.