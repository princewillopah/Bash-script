
```Bash
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

```

### Annotations from the Image
- **Shebang Line**: `#!/bin/bash`
- **Variables**: `username="Jay", filename="$3"`
- **User Input**: `read -p "Enter your username: " user`
- **Conditional if Statement**: `if [ "$EUID" -ne 0 ]; then ... else ... fi`
- **For Loop**: `for i in {1..5}; do echo "$i"; done`
- **Functions**: `function greet() { greet "Hello, $1" }; greet "Alice"`
- **Conditional Case Statement**: `case $num in 1) echo "You chose one." ;; 2) echo "You chose two." ;; *) echo "Invalid choice." ;; esac`
- **File Operations**: `if [ -e "$filename" ] && [ -d "$filename" ]; then ... else ... fi`
- **Command Line Arguments**: `echo "First argument: $1", echo "Second argument: $2"`
- **Exit Status Codes**: `cat nonexistent-file.txt 2> /dev/null; echo "Exit status: $?"`
- **Indexed Arrays**: `fruits=("Apple" "Orange" "Banana"); echo "Fruits: ${fruits[0]}"`
- **Associative Arrays**: `declare -A capitals; capitals[France]="Paris"; echo "Capital - of France: ${capitals[France]}"`
- **Command Substitution**: `current_date=$(date); echo "Today's date is: $current_date"`
- **Command Line Redirections**: `echo "This is a simple text." > example.txt`
- **Arithmetic Operations**: `result=$(( 5 + 2 )); echo "$result"`
- **Parameter Expansion**: `SRC=/path/to/foo.cpp; BASEPATH=${SRC##*/}; echo $BASEPATH`
- **Process Signal Handling**: `trap 'echo "Received SIGTERM signal. Cleaning up..." exit $SIGTERM' SIGTERM`
- **Comments**: `# This is a single line comment, : 'this is a multiline comment'`
### Source
- The image is credited to `sysxplore.com`.
This transcription includes all code examples and annotations as shown in the image. Let me know if you need further assistance with any specific part!

### Troubleshooting
- use the command "`bash -x Basics.sh`" instead of "`./Basics.sh`" to run the basic script 'Basics.sh`
- Run:

```Bash
bash -x Basics.sh
```