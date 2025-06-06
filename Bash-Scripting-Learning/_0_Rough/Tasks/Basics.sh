#!/bin/bash
# script.sh
username="Jay"                    # Variables
filename="$3"
read -p "Enter your username: " user  # User Input
echo "Username: $user"

if [ "$EUID" -ne 0 ]; then        # Conditional if Statement
    echo "You are not running this script as the root user."
else
    echo "You are running this script as the root user."
fi

for i in {1..5}; do               # For Loop
    echo "$i"
done

function greet() {                # Functions
    echo "Hello, $1"
}
greet "Alice"

read -p "Enter a number between 1 and 2: " num  # Conditional Case Statement
case $num in
    1) echo "You chose one." ;;
    2) echo "You chose two." ;;
    *) echo "Invalid choice." ;;
esac

if [ -e "$filename" ] && [ -d "$filename" ]; then  # File Operations
    echo "File exists and is a directory."
else
    echo "File does not exist or is not a directory."
fi

echo "First argument: $1"         # Command Line Arguments
echo "Second argument: $2"

cat nonexistent-file.txt 2> /dev/null  # Exit Status Codes
echo "Exit status: $?"

fruits=("Apple" "Orange" "Banana")  # Indexed Arrays
echo "Fruits: ${fruits[0]}"

declare -A capitals              # Associative Arrays
capitals[France]="Paris"
capitals[USA]="Washington D.C."
echo "Capital of France: ${capitals[France]}"

current_date=$(date)             # Command Substitution
echo "Today's date is: $current_date"

echo "This is a simple text." > example.txt  # Command Line Redirections
echo -n "name hello.txt &> /dev/null"

result=$(( 5 + 2 ))              # Arithmetic Operations
echo "$result"

SRC=/path/to/foo.cpp             # Parameter Expansion
BASEPATH=${SRC##*/}              # Remove longest match of / from end
echo $BASEPATH

trap 'echo "Received SIGTERM signal. Cleaning up..." exit $SIGTERM' SIGTERM  # Process Signal Handling

# This is a single line comment                  # Comments
: 'this is a multiline
comment'