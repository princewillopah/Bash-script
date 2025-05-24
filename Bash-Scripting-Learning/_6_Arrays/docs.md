-----------------------------------------
NOTE: 
-----------------------------------------
Bash supports two kinds:

## Indexed Arrays: 
You can declare an indexed array in several ways:

- Using parentheses and spaces to separate elements: `my_array=("apple" "banana" "cherry")`
- Assigning values to specific indices: `my_array[0]="apple"; my_array[1]="banana"; my_array[2]="cherry"`
- Using the declare -a command (optional but good practice for clarity): `declare -a my_array=("apple" "banana" "cherry")`

## Associative Arrays: 
You need to explicitly declare an associative array using declare -A before assigning values. Elements are stored as key-value pairs.
- declare -A my_assoc_array
- my_assoc_array["name"]="Alice"
- my_assoc_array["age"]=30
- my_assoc_array=([city]="New York" [country]="USA")




${array[@]}
All elements
${!array[@]}
All indices
${#array[@]}
Number of elements




9. Getting All Elements or Indices
    | Syntax                                  | Meaning                                                     |
    | ---------------                         | ----------------------------------------------------------- |
    | ${array[@]}                             |  All elements                                               |
    | ${!array[@]}                            |  All indices                                                |
    | ${#array[@]}                            |  Number of elements                                         |
    |                                         |                                                             |
    | ${arr[@]^}                              |  Uppercase first letter                                     |
    | ${arr[@]^^}                             |  Uppercase all letters                                      |
    | ${arr[@],}                              |  Lowercase first letter                                     |
    | ${arr[@],,}                             |  Lowercase all letters                                      |
    |  ${arr[@]/search/replace}               |  Replace first match in each element                        |