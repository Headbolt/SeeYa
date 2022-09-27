#!/bin/bash
#
###############################################################################################################################################
#
# ABOUT THIS PROGRAM
#
#	SeeYa.sh
#	https://github.com/Headbolt/SeeYa
#
#   This Script is designed for use in JAMF
#
#   - This script will ...
#		Grab the file path from JAMF Variable #4
#		Delete the File
#
#		JAMF Script Attribute #4 required, named "Full File Path"
#
###############################################################################################################################################
#
# HISTORY
#
#	Version: 1.1 - 27/09/2022
#
#	- 15/02/2018 - V1.0 - Created by Headbolt
#	- 27/09/2022 - V1.1 - Updated by Headbolt, cleaner and better reporting
#
####################################################################################################
#
# Description
#
# Script to remove a File
#
###############################################################################################################################################
#
# DEFINE VARIABLES & READ IN PARAMETERS
#
###############################################################################################################################################
#
# Variables used by this script.
#
file=$4 # Grab the file path from JAMF variable #4 eg. username
ScriptName="XXX Management Tasks | Delete File"
#
###############################################################################################################################################
# 
# SCRIPT CONTENTS - DO NOT MODIFY BELOW THIS LINE
#
###############################################################################################################################################
#
# Defining Functions
#
###############################################################################################################################################
#
# Section End Function
#
SectionEnd(){
#
/bin/echo # Outputting a Blank Line for Reporting Purposes
/bin/echo  ----------------------------------------------- # Outputting a Dotted Line for Reporting Purposes
/bin/echo # Outputting a Blank Line for Reporting Purposes
#
}
#
###############################################################################################################################################
#
# Script End Function
#
ScriptEnd(){
#
/bin/echo Ending Script '"'$ScriptName'"'
SectionEnd
exit $ExitCode
#
}
#
###############################################################################################################################################
#
# End Of Function Definition
#
###############################################################################################################################################
#
# Beginning Processing
#
###############################################################################################################################################
#
# Begin Processing
#
/bin/echo # Outputting a Blank Line for Reporting Purposes
SectionEnd
#
/bin/echo "deleting $file"
/bin/echo # Outputting a Blank Line for Reporting Purposes
rm -f -r "$file"
ScriptEnd
