#! /bin/bash

clear
echo "---------------------------------------------------------------------------------------------------------------"
echo ""









name="PrINCEwill"

#${name,} will Make the first latter to lowercase
echo "Make the first letter of ${name} to lowercase:  ${name,} " 

#${name,,} will Make all latter to lowercase
echo "Make all letters of ${name} to lowercase:  ${name,,} "

#${name,} will Make the first latter to lowercase
echo "Make the first letter of ${name} to uppercase:  ${name^} "

#${name,,} will Make all latter to lowercase
echo "Make all letters of ${name} to lowercase:  ${name^^} "

#${#name} will get the length of the characters
echo "the number of ${name}: ${#name}"

#-----------------------------------------------------------------------------
# character Manipulation
#------------------------------------------------------------------------------
# ${name:0:7}=PRINCEW
# ${name:1:7}=RINCEWI
# ${name:3}=NCEWILL(start from index 3 to the end)
# ${name: -3:2}=IL(start from the last 3 indexes, display only 2 ){notice the space before the minus){select the last 3 characters, pick 2 from the left to right} 
# ${name: -3}=ILL(start from the last 3 indexes, )

#-----------------------------------------------------------------------------
# PARAMETER EXPANSION ${}
#-----------------------------------------------------------------------------
echo "the number of ${name}: ${#name}"
#-----------------------------------------------------------------------------
# COMMAND SUBSTITUTION $()
#-----------------------------------------------------------------------------
time=$(date)
my_time=$(date +%d-%m-%Y_%H:%m:%S)

echo "Current date and time: $time"
echo "Current date and time: $my_time"

#-----------------------------------------------------------------------------
# Word Splitting -- "A process the shell performs to split the result of some unquoted expansions into seperate words"
#-----------------------------------------------------------------------------
#Word splitting is only performed on the result of "unquoted" parameter expansions, command substitutions, arithmentic expansion






echo ""
echo "---------------------------------------------------------------------------------------------------------------"








