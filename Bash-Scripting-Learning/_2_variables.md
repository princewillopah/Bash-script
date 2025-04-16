
**Declaration**: variable=value (no spaces around =).
**Usage**: ${variable} or $variable to access the value.
**Scope**: Variables are global by default; use local in functions for local scope.
**Special Variables**:
    $HOME: User’s home directory.
    $PATH: Executable search path.
    $PWD: Current working directory.

# Defining Variables:
    NAME="John"          # String
    COUNT=10             # Integer
    FILES=$(ls /tmp)     # Command output stored in variable 

# Accessing Variables:
    echo "User: $NAME"       # Output: User: John
    echo "Count: ${COUNT}x"  # Curly braces for clarity




```

```
## ---------------------
## Read-Only Variables
## ---------------------

readonly VERSION="1.0"
VERSION="2.0"  # Error: cannot modify

## ---------------------
## Unset Variables
## ---------------------
    unset name


## ---------------------
## Default Values & Fallbacks
## ---------------------
    echo ${env:-"default_env"}   # If env is unset, use default_env
    echo ${env:="set_dev"}       # If env is unset, set it to set_dev


## ---------------------
## Local Variables (Inside Functions)
## ---------------------
    my_func() {
    local name="InsideFunc"
    echo "Inside: $name"
    }


## ---------------------
## 
## ---------------------


## ---------------------
## 
## ---------------------


## ---------------------
## 
## ---------------------