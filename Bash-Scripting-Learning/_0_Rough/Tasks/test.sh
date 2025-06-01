# gradepoint=(4)
# echo "array = ${gradepoint[@]}"
# gradepoint=("${gradepoint[@]}" 5)
# echo "array = ${gradepoint[@]}"
#  gradepoint+=("6") 
# echo "array = ${gradepoint[@]}"

# if false; then
#     echo "This is true"
# else
#     echo "This is false"
# fi


# add 5 10
# echo "Return value: $?"  # This will print the return value of the last command, which is the exit status, not the sum.

# result=$(add2 5 10)
# echo "Result from add2: $result"  # This will print the sum returned by add2.

# prive me a random number between 1 and 10
# random_number=$((RANDOM % 10 + 1))
echo
read -p "Enter a number between 1 and 10: " user_input

while [[ ! $user_input =~ ^[1-9]$ ]] || [[ $user_input -gt 10 ]]; do
    echo "Invalid input. Please enter a number between 1 and 10."
    read -p "Enter a number between 1 and 10: " user_input
done



echo 

# while [[ ]]; do
#     echo "HI"
#     if true; then
#         break
#     fi
# done





echo
echo


