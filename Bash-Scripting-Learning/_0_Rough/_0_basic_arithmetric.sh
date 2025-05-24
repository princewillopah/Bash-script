
echo "---------------------------------------------------------------------------------------------------------------"
echo ""



# read -p "Enter a number: " num1
# read -p "Enter another number: " num2
# echo "You entered: $num1 and $num2" 
# echo
# echo "Performing arithmetic operations..."
# echo
# ----------------------------
# adition_result=$((num1 + num2))
# subtraction_result=$((num1 - num2))
# Multiplication_result=$((num1 * num2))
# Division_result=$((num1 / num2))
# Modulus_result=$((num1 % num2))

# echo "Addition: $adition_result"
# echo "Subtraction: $subtraction_result"
# echo "Multiplication: $Multiplication_result"
# echo "Division: $Division_result"
# echo "Modulus: $Modulus_result"
# --------------------------
# result=$((num1 + num2))    # 5
# echo "Addition: $result"
# result=$((num1 - num2))
# echo "Subtraction: $result"
# result=$((num1 * num2))
# echo "Multiplication: $result"
# result=$((num1 / num2))
# echo "Division: $result"
# result=$((num1 % num2))
# echo "Modulus: $result"





# echo "Incrementing first number: $((num1 + 1))"
# echo "Decrementing second number: $((num2 - 1))"
# echo "Using variables in arithmetic expansion: $((num1 + num2))"


# echo "Using arithmetic expansion in a loop:"
# for (( i = 5; i <= 5; i++ )); do
#     echo "Iteration: $i"
# done

# i = 1 || is 1 less than 5 ? then iterate | then increment i by 1
#  1 = 5 || is 5 less than or equall to 5 ? then iterate | then increment i by 1
# i = 6 || is 6 less than or equall to 5 ? then iterate | then increment i by 1

# read -p "Enter a number: " num1
# read -p "Enter another number: " num2
# echo "Using arithmetic expansion with conditions:"
# if (( num1 > num2 )); then
#     echo "$num1 is greater than $num2"
# else
#     echo "$num1 is not greater than $num2"
# fi

# echo "Using arithmetic expansion with arrays:"
# arr=(1 2 34 40 -55)
# sum=0
# for num in "${arr[@]}"; do
#     sum=$(( sum + num ))
# done
# echo "Sum of array elements: $sum"  # Output: Sum of array elements: 15



sum=0
for num in 1 2 34 40 -55; do
    sum=$(( sum + num ))
done
echo "Sum of array elements: $sum"  # Output: Sum of array elements: 15

# first iteration: sum = 0 + 1 = 1 # when num = 1
# second iteration: sum = 1 + 2 = 3 # when num = 2
# third iteration: sum = 3 + 34 = 37 # when num = 34
# fourth iteration: sum = 37 + 40 = 77 # when num = 40
# fifth iteration: sum = 77 + -55 = 22 # when num = -55




# echo "Sum of array elements: $sum"  # Output: Sum of array elements: 15
# echo "Using arithmetic expansion with floating-point numbers (requires bc):"



































































































































echo ""
echo "-----------------------------------------------------------------------------------------------"
