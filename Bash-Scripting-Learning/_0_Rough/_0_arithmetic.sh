#!/bin/bash
# Arithmetic Expansion
# Bash provides arithmetic expansion using the $(( )) syntax.


result=$(( 5 + 3 ))
echo $result  # Output: 8

# Subtraction
result=$(( 10 - 4 ))
echo $result  # Output: 6

# Multiplication
result=$(( 7 * 2 ))
echo $result  # Output: 14

# Division
result=$(( 9 / 3 ))
echo $result  # Output: 3

# Modulus (remainder)
result=$(( 17 % 5 ))
echo $result  # Output: 2

# i need you to teach me how to use arithmetic expansion in bash
# Incrementing a variable
count=0
count=$(( count + 1 ))
echo $count  # Output: 1
# Decrementing a variable
count=$(( count - 1 ))
echo $count  # Output: 0
# Using variables in arithmetic expansion
a=5
b=3
result=$(( a + b ))
echo $result  # Output: 8
# Using arithmetic expansion in a loop
for (( i = 1; i <= 5; i++ )); do
    echo "Iteration: $i"
done
# Using arithmetic expansion with conditions
if (( a > b )); then
    echo "$a is greater than $b"
else
    echo "$a is not greater than $b"
fi
# Using arithmetic expansion with arrays
arr=(1 2 3 4 5)
sum=0
for num in "${arr[@]}"; do
    sum=$(( sum + num ))
done
echo "Sum of array elements: $sum"  # Output: Sum of array elements: 15
# Using arithmetic expansion with floating-point numbers (requires bc)
float_a=5.5
float_b=2.2
float_result=$(echo "$float_a + $float_b" | bc)
echo $float_result  # Output: 7.7
# Using arithmetic expansion with floating-point numbers (using awk)
float_result=$(awk "BEGIN {print $float_a + $float_b}")
echo $float_result  # Output: 7.7
# Using arithmetic expansion with floating-point numbers (using printf)
float_result=$(printf "%.2f" "$(echo "$float_a + $float_b" | bc)")
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using bc with scale)
float_result=$(echo "scale=2; $float_a + $float_b" | bc)
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using awk with precision)
float_result=$(awk "BEGIN {printf \"%.2f\", $float_a + $float_b}")
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using printf with precision)
float_result=$(printf "%.2f" "$(awk "BEGIN {print $float_a + $float_b}")")
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using bc with precision)
float_result=$(echo "scale=2; $float_a + $float_b" | bc)
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using awk with scale)
float_result=$(awk "BEGIN {print $float_a + $float_b}")
echo $float_result  # Output: 7.7
# Using arithmetic expansion with floating-point numbers (using bc with scale)
float_result=$(echo "scale=2; $float_a + $float_b" | bc)
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using awk with precision)
float_result=$(awk "BEGIN {printf \"%.2f\", $float_a + $float_b}")
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using printf with precision)
float_result=$(printf "%.2f" "$(awk "BEGIN {print $float_a + $float_b}")")
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using bc with precision)
float_result=$(echo "scale=2; $float_a + $float_b" | bc)
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using awk with scale)
float_result=$(awk "BEGIN {print $float_a + $float_b}")
echo $float_result  # Output: 7.7
# Using arithmetic expansion with floating-point numbers (using bc with scale)
float_result=$(echo "scale=2; $float_a + $float_b" | bc)
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using awk with precision)
float_result=$(awk "BEGIN {printf \"%.2f\", $float_a + $float_b}")
echo $float_result  # Output: 7.70
# Using arithmetic expansion with floating-point numbers (using printf with precision)
float_result=$(printf "%.2f" "$(awk "BEGIN {print $float_a + $float_b}")")
echo $float_result  # Output: 7.70

