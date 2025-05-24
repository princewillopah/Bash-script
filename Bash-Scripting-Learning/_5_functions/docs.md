-----------------------------------------
NOTE: 
-----------------------------------------
In Linux, everything is a file, including input, output, and error messages. There are three standard data streams:

## Definition
    function_name_xyz() {
        commands
    }
## Caling the function:
    function_name_xyz

## Returning Values:
Bash functions don’t return values like other languages (e.g., via return with a value). Instead, they use:
    - `echo` or ``printf` to output a value, which can be captured with command substitution ($(...)).
    - `return` to set an exit code (0-255), typically for success/failure status.


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