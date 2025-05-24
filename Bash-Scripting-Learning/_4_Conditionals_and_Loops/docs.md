-----------------------------------------
NOTE: 
-----------------------------------------

## Conditionals
 `if`: Tests a condition and executes a block of code if true.
 `else`: Executes a block if the if condition is false.
 `elif`: Checks additional conditions if previous ones are false.
 `case`: Matches a variable against patterns, executing the corresponding block. It's like a switch statement in other languages
    
## Loops:
 `for`: Iterates over a list of items (e.g., files, numbers).
 `while`: Loops as long as a condition is true.
 `until`: Loops until a condition becomes true (opposite of while).
 `select`: Creates an interactive menu for user selection.
 `break`: Exits a loop prematurely.
 `continue`: Skips the current iteration and proceeds to the next.


## Logical Operators:
 `&&`: Logical AND; executes the next command only if the previous one succeeds.
 `||`: Logical OR; executes the next command only if the previous one fails.
 `!`: Logical NOT; negates a condition.


## File Tests, String Tests
 `test`: Evaluates expressions, used in [ ] or standalone.
 `[ ]`: Basic test command for conditions; requires spaces around brackets.
 `[[ ]]`: Enhanced test command (Bash-specific), supports pattern matching and is safer with


## Common File Tests
 `-e`: File exists.
 `-f`: Regular file.
 `-d`: Directory.
 `-r`, `-w`, `-x`: Readable, writable, executable.
 `-s`: File is non-empty.


## Comparisons: Numeric and String Comparisons

| ----------- | ------------| ---------- | ----------- | ------------------------ |
| Operator	  | Numeric 	| String 	 | Files       | Description              |
| ----------- | ------------| ---------- | ----------- | ------------------------ |
|  -eq	      |    ✓	    |            |             |   Equal                  |
|  -ne	      |    ✓	    |            |             |   Not equal              |
|  -lt	      |    ✓	    |            |             |   Less than              |  
|  -gt	      |    ✓	    |            |             |   Greater than           |     
|  -le	      |    ✓	    |            |             |   Less or equal          |
|  -ge	      |    ✓	    |            |             |   Greater or equal       |
|  =		  |             |     ✓      |             |   String equal           |
|  !=		  |             |     ✓      |             |   String not equal       |
|  -z		  |             |     ✓      |             |   String is empty        |
|  -n		  |             |     ✓      |             |   String is not empty    |
|  -e		  |	            |            |   ✓	       |   File exists            |
|  -f		  |             |            |   ✓	       |   Regular file           |
|  -d		  |             |            |   ✓	       |   Directory              |
|  -r		  |             |            |   ✓	       |   Readable               |
|  -w		  |             |            |   ✓	       |   Writable               |
|  -x		  |             |            |   ✓	       |   Executable             |
|  -s		  |             |            |   ✓	       |   File not empty         |
|  -nt		  |             |            |   ✓	       |   Newer than             | 
|  -ot		  |             |            |   ✓	       |   Older than             |
| ----------- | ----------- | ---------- | ----------- | ------------------------ |


## Basic Syntax:

    if [ condition ]; then
        commands
    fi


    if [ condition ]; then
        commands
    else
        commands
    fi


    if [ condition ]; then
        commands
    elif [ condition ]; then
        commands
    else
        commands
    fi

## Examples:


















1. 
| Stream   | File Descriptor | Description                           |                                                                                               |     
| -------- | --------------- | ------------------------------------- | --------------------------------------------------------------------------------------------- |
| `stdin`  | 0               | Standard Input (keyboard, file, etc.) | Data fed into a command, typically from the keyboard or a file.                               |
| `stdout` | 1               | Standard Output (screen by default)   | Normal output of a command, typically displayed on the terminal or redirected to a file.      |
| `stderr` | 2               | Standard Error (screen by default)    | Error messages produced by a command, also typically displayed on the terminal or redirected. |




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