#!/bin/bash

clear
echo "---------------------------------------------------------------------------------------------------------------"
echo ""



 

# True && True = "True"       # 5 < 10 && 3 > 1 = "True"
# True && False = "False"     # 5 < 10 && 3 < 1 = "False"
# False && True = "False"    # 5 > 10 && 3 > 1 = "False"
# False && False = "False"   # 5 > 10 && 3 < 1 = "False"


# True || True = "True"      # 5 < 10 || 3 > 1 = "True"
# True || False = "True"     # 5 < 10 || 3 < 1 = "True"
# False || True = "True"     # 5 > 10 || 3 > 1 = "True"
# False || False = "False"   # 5 > 10 || 3 < 1 = "False"

# read -p "Enter your score: " score
# if (( score >= 90 )); then
#     echo "Grade: A"
# elif (( score >= 80 )); then
#     echo "Grade: B"
# elif (( score >= 70 )); then
#     echo "Grade: C"
# elif (( score >= 60 )); then
#     echo "Grade: D"
# else
#     echo "Grade: F"
# fi


# if (( score <= 100 && score >= 90 )); then
#  echo "Grade: A"
# elif (( score <= 89 && score >= 80 )); then
#  echo "Grade: B"
# elif (( score <= 79 && score >= 70 )); then
#  echo "Grade: C"
# elif (( score <= 69 && score >= 60 )); then
#  echo "Grade: D"
# else 
#  echo "Grade: F"
# fi



# if (( 3 > 5 )); then
#     echo "This is True"
# else
#     echo "This is False"
# fi


# if (( 5 < 10 )); then
#     echo "Ada"
# fi

# if (( 5 > 10 )); then
#     echo "Linda"
# fi

# if (( 15 > 10 )); then
#     echo "hope"
# else
#     echo "hope not"
# fi

# if (( 5 > 10 )); then
#     echo "taye"
# elif (( 5 < 10 )); then
#     echo "taye yes"
# elif (( 5 == 10 )); then
#     echo "taye equal"
# else
#     echo "taye not"
# fi

# if (( 5 > 10 )); then
#     echo "bob"
# elif (( 5 < 10 )); then
#     echo "bob yes"
# elif (( 5 == 10 )); then
#     echo "taye equal"
# fi

# if (( 5 < 0 )); then
#     echo "taye"
# fi

# if (( 5 < 10 )); then
#     echo "Budi"
# fi




# if true && true; then
#     echo "A"
# elif true && false; then
#     echo "B"
# elif false && true; then
#     echo "C"
# elif false && false; then
#     echo "D"
# elif true || true; then
#     echo "E"
# elif true || false; then
#     echo "E"
# elif false || true; then
#     echo "E"
# elif false || false; then
#     echo "E"
# fi

# ( xx && xx )  && ( xx || xx ) && ( xx || xx ) && ( xx && xx ) && ( xx || xx ) && ( xx && xx ) && ( xx || xx ) && ( xx && xx )
# if (( 5 > 10 )) || (( 5 < 10 )) || (( 5 == 10 )) || (( 5 != 10 )) || (( 5 <= 10 )) || (( 5 >= 10 )) || (( 5 < 0 )) || (( 5 > 0 )); then
#     echo "All conditions are true"
# else
#     echo "Not all conditions are true"
# fi
# ----------------------------------------------------------------------

# score=( 95 85 75 65 84 39 53 88 45 )
# unit=( 3 4 2 3 3 2 2 4 2 )


# sum=0
# unit_sum=0
# total_num_of_courses=${#score[@]}

# for i in "${score[@]}"; do  
#    sum=$(( sum + i ))
# done  

# for i in "${unit[@]}"; do
#    unit_sum=$(( unit_sum + i ))
# done

# # average=$(( sum / total_num_of_courses ))
# # cgpa=$(( sum / unit_sum )) 
# cgpa=$(echo "scale=2; $sum / $unit_sum" | bc)

# echo "Scores: ${score[@]}"
# echo "Total number of courses: ${total_num_of_courses}"
# echo "Units: ${unit[@]}"
# echo "Total units: ${unit_sum}"
# echo "Sum of scores: ${sum}"
# # echo "Average score: ${average}"
# echo "CGPA: ${cgpa}"


# sum = 0
# first iteration: where i = 95 then sum = 0 + 95 = 95
# second iteration: where i = 85 then sum = 95 + 85 = 180
# third iteration: where i = 75 then sum = 180 + 75 = 255
# fourth iteration: where i = 65 then sum = 255 + 65 = 320
# fifth iteration: where i = 84 then sum = 320 + 84 = 404
# sixth iteration: where i = 39 then sum = 404 + 39 = 443
# seventh iteration: where i = 53 then sum = 443 + 53 = 496
# eighth iteration: where i = 88 then sum = 496 + 88 = 584
# ninth iteration: where i = 45 then sum = 584 + 45 = 629




# sum=$(echo "scale=2; $sum" | bc)
# #average=$(( sum / ${#score[@]} ))
# average=$(echo "scale=2; $sum / ${#score[@]}" | bc)

# read -p "Enter scores separated by space: " -a scores
# echo "You entered: ${scores[@]}"
# sum=0
# for i in "${scores[@]}"; do  
#    sum=$(( sum + i ))
# done  
# echo
# echo "Sum: $sum"

unit=( 3 4 2 3 3 2 2 4 2 )
gradepoint=(5 4 5 3 2 5 4 3 2 5)
total_units=0
total_gradepoints=0

for i in "${unit[@]}"; do
   total_units=$(( total_units + i ))
done
for i in "${gradepoint[@]}"; do
   total_gradepoints=$(( total_gradepoints + unit[i] * gradepoint[i] ))

done
echo "Units: ${unit[@]}"
echo "Points: ${gradepoint[@]}"
echo "Total number of courses: ${#unit[@]}"
echo "Total number of gradepoints: ${#gradepoint[@]}"


echo "Total units: $total_units"
echo "Total gradepoints: $total_gradepoints"
cgpa=$(echo "scale=2; $total_gradepoints / $total_units" | bc)
echo "CGPA: $cgpa"





# echo "Sum: $(echo "scale=2; ${numbers[@]/%/+}" | sed 's/+$//')"
# echo "Average: $(echo "scale=2; ${numbers[@]/%/+}" | sed 's/+$//') / ${#numbers[@]} " | bc)"
# echo "Maximum: $(printf "%s\n" "${numbers[@]}" | sort -n | tail -1)"
# echo "Minimum: $(printf "%s\n" "${numbers[@]}" | sort -n | head -1)"


















































































echo ""
echo "---------------------------------------------------------------------------------------------------------------"
