-----------------------------------------
NOTE: 
-----------------------------------------
In Linux, everything is a file, including input, output, and error messages. There are three standard data streams:

1. 
| Stream   | File Descriptor | Description                           |                                                                                               |     
| -------- | --------------- | ------------------------------------- | --------------------------------------------------------------------------------------------- |
| `stdin`  | 0               | Standard Input (keyboard, file, etc.) | Data fed into a command, typically from the keyboard or a file.                               |
| `stdout` | 1               | Standard Output (screen by default)   | Normal output of a command, typically displayed on the terminal or redirected to a file.      |
| `stderr` | 2               | Standard Error (screen by default)    | Error messages produced by a command, also typically displayed on the terminal or redirected. |


2. `echo`: Outputs text to stdout. It's simple and widely used for displaying messages or variable values.

    ## Basic syntax:
        echo [options] [string]

    ## Examples:

        echo "Hello, world!" 
        echo This is a single line.
        echo "This is" "multiple" "words" "separated" "by spaces."
        echo "Variables can be displayed: $HOME"                                             ## Displays your home directory 



        echo "Hello World"                                                                   ## Prints Hello World
        echo -n "No newline"                                                                 ## -n suppresses the trailing newline
        echo -e "Line1\nLine2"                                                               ## -e enables interpretation of escape characters
        echo -e "Good $(date +%p),\nThe current time is $(date +%r)"                         ##  




3. `read`: Reads input from stdin (usually the keyboard) and stores it in a variable for further processing.

    ## Basic Syntax:
    read [options] [variable_name]
    read [variable_name1] [variable_name2]

    ## Flags:
    -p: Prompts the user with a message before reading input.
    -n 1: Reads only one character.
    -s: Silent mode – the input is not displayed on the screen (useful for passwords).

    ## Examples:
    read name
    echo "Hello, $name!"

    read first last
    echo "Your name is $first $last"

    read -p "Enter your age: " age
    echo "You are $age years old."

    read -n 1 -p "Press any key to continue..."
    echo # Move to the next line

    read -s password
    echo # Move to the next line (password won't be displayed)
    echo "Your password has been recorded (not really!)."

    read name                  # Reads single input into 'name' variable
    read -p "Enter age: " age  # -p displays a prompt
    read -s -p "Password: " pw # -s makes input silent (for passwords)
    read -a array              # -a reads into an array


    #!/bin/bash
    read -p "Enter username: " username
    read -s -p "Enter password: " password
    echo
    read -p "Enter full name: " fullname

    echo "User $username ($fullname) registered successfully!" # In real life, you'd store this data securely

4. `printf`: A more powerful alternative to `echo`, allowing formatted output similar to C's printf. It provides precise control over output formatting.
    
    ## Basic syntax:
        printf format [arguments]
        printf "format" arguments

    ## Format specifiers
    %s:    String
    %d:    Decimal integer
    %f:    Floating-point number
    %.2f:  Floating-point number with 2 decimal places
    %-10s: Left-align string in a field of 10 characters
    %5d:   Right-align integer in a field of 5 characters
    %x:    Prints the hexadecimal value in lowercase (e.g., ff)
    %X:    Prints the hexadecimal value in uppercase (e.g., FF)

    \n:    Newline character

    ## Examples:
        printf "Name: %s\nAge: %d\n" "Alice" 25
        printf "Decimal: %d\nHex: %x\nFloat: %.2f\n" 255 255 3.14159
        printf "Name: %s\nAge: %d\n" "Princewill" 25
        printf "Hello, %s!\n" "User"
        printf "The number is %d.\n" 42
        printf "The price is %.2f dollars.\n" 9.99
        printf "%-10s %5d\n" "Name" "Age"
        printf "%-10s %5d\n" "Alice" 30
        printf "%-10s %5d\n" "Bob" 25
        printf "Name: %s\nAge: %d\n" "Alice" 25
        printf "Decimal: %d\nHex: %x\nFloat: %.2f\n" 255 255 3.14159
        #!/bin/bash
        printf "%-20s %-10s %-10s\n" "Username" "UID" "Shell"
        printf "========================================\n"
        awk -F: '{printf "%-20s %-10s %-10s\n", $1, $3, $7}' /etc/passwd | head -5



9. Special 
    | Variable        | Meaning                   |
    | --------------- | ------------------------- |
    |                 |                           |
    |                 |                           |
    |                 |                           |
    |                 |                           |
    |                 |                           |
    |                 |                           |
    |                 |                           |