
#! /bin/bash

clear

echo "---------------------------------------------------------------------------------------------------------------"
echo ""


# i need an array of 20 names now
names=("Alice" "Bob" "Charlie" "David" "Eve" "Frank" "Grace" "Heidi" "Ivan" "Judy" "Karl" "Leo" "Mallory" "Nina" "Oscar" "Peggy" "Quentin" "Rupert" "Sybil" "Trent")
echo "Original names array: ${names[@]}"  #   ${}
echo "there are ${#names[@]} names in the array"
echo

read -p "Enter your name: " name

# for qualified_name in "${names[@]}"; do
#  if [[ "${name}" == "${qualified_name}" ]]; then
#     echo "you are welcome, ${name}"
#  else
#     echo "${name}, you are Not Qualified"
#  fi
# done

# for qualified_name in "${names[@]}"; do
#   if [[ "${name}" == "${qualified_name}" ]]; then
#     echo "You are welcome, ${name}"
#     found=true
#     break
#   fi
# done

# if ! $found; then
#   echo "${name}, you are not qualified"
# fi



# read -p "Enter your name: " name
# echo "You entered: $name"

# vowels=("a" "e" "i" "o" "u")

# for vowel in "${vowels[@]}"; do
#     if [[ "$name" == *"$vowel"* ]]; then
#         echo "The name '$name' contains the vowel '$vowel'."
#     else
#         echo "The name '$name' does not contain the vowel '$vowel'."
#     fi
# done






# found=false
# for name in "${names[@]}"; do
#     if [[ "$name" == "$search_name" ]]; then
#         found=true
#         echo "Found the name: $name"
#         break
#     fi
# done
# if [[ "$found" == false ]]; then
#     echo "Name not found in the array."
# fi



# for name in "${names[@]}"; do

    
#     echo "---------------------------------------------------------------------------------------------------------------"
# done
# echo "Using parameter expansion for character manipulation:"
# echo "---------------------------------------------------------------------------------------------------------------"
# echo "Using character manipulation on the first name in the array:"
# name="${names[0]}"
# echo "Original name: ${name}"
# echo "Make the first letter of ${name} to lowercase:  ${name,}"
# echo "Make all letters of ${name} to lowercase:  ${name,,}"
# echo "Make the first letter of ${name} to uppercase:  ${name^}"
# echo "Make all letters of ${name} to uppercase:  ${name^^}"
# echo "The number of characters in ${name}: ${#name}"
# echo "Using character manipulation on the last name in the array:"
# name="${names[-1]}"
# echo "Original name: ${name}"
# echo "Make the first letter of ${name} to lowercase:  ${name,}"
# echo "Make all letters of ${name} to lowercase:  ${name,,}"
# echo "Make the first letter of ${name} to uppercase:  ${name^}"                         



















echo ""
echo "---------------------------------------------------------------------------------------------------------------"
