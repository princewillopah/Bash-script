#!/bin/bash
echo







# This script calculates the CGPA (Cumulative Grade Point Average) for a student.
# each score a student has a grade point
# each course has a unit

# Nigerian universities use a 5-point grading system:

# - A (70-100%): 5 grade points
# - B (60-69%): 4 grade points
# - C (50-59%): 3 grade points
# - D (45-49%): 2 grade points
# - E (40-44%): 1 grade point
# - F (Below 40%): 0 grade points

# example, if the student has 9 courses with the following units and grade points:
# course:          MATH101, MAT105, PHYS102, PHY104, PHY102, CHEM103, BIO104, ENG105, CS106, 
# Units:              3        4      2        3       3      2        2        4       3
# student_score =    76       76      87      45      34      78       65       56      43     # Example scores for the student
# Grade Points:      5        5       5       3       2       5        4        3       2

# =====================================================================

# Function to validate student name
validate_student_name() {
    local name="$1"
    # Check if name is empty or only whitespace
    if [[ -z "${name// }" ]]; then
        echo "Error: Student name cannot be empty or only whitespace."
        return 1
    # Check if name contains only letters, spaces, hyphens, or apostrophes
    elif ! [[ "$name" =~ ^[A-Za-z][A-Za-z\'\ -]*$ ]]; then
        echo "Error: Student name can only contain letters, spaces, hyphens, or apostrophes, and must start with a letter."
        return 1
    # Check length (1 to 50 characters)
    elif (( ${#name} > 50 )); then
        echo "Error: Student name cannot exceed 50 characters."
        return 1
    fi
    return 0
}


# validate_student_name "Andrus Okwudili"  # Example validation call, can be removed later


echo "CGPA Calculation Script"
echo "==========================="
echo
# Prompt for student name with validation
while true; do
    read -p "Enter student name: " student_name
    if validate_student_name "$student_name"; then
        break
    fi
done
# read -p "Enter student name: " student_name
read -a student_score -p "Enter student scores in this order, saperated by a single space(MATH101 MAT105 PHYS102 PHY104 PHY102 CHEM103 BIO104 ENG105 CS106.): "
echo

courses=(MATH101 MAT105 PHYS102 PHY104 PHY102 CHEM103 BIO104 ENG105 CS106)
units=(3 4 2 3 3 2 2 4 3)
gradepoint=()  # Initialize gradepoint array
grade=()  # Initialize grade array
course_gradepoint=()  # Initialize course grade point array 





# Calculate grade points based on student scores 
for score in "${student_score[@]}"; do
    if (( score >= 70 )); then
        gradepoint=("${gradepoint[@]}" 5) #   # gradepoint+=("5")  # A   # grade point for A is 5 # gradepoint=("${gradepoint[@]}" 5)
        grade+=("A")
    elif (( score >= 60 )); then
        gradepoint=("${gradepoint[@]}" 4) # B
        grade+=("B")
    elif (( score >= 50 )); then
        gradepoint=("${gradepoint[@]}" 3)
        grade+=("C")
    elif (( score >= 45 )); then
        gradepoint=("${gradepoint[@]}" 2)
        grade+=("D")
    elif (( score >= 40 )); then
        gradepoint=("${gradepoint[@]}" 1)     # gradepoint+=("1")  # E
        grade+=("E")
    else
        gradepoint=("${gradepoint[@]}" 0)
        grade+=("F")  # F
    fi
done


# Calculate course grade points by multiplying units with grade points
for (( i=0; i<${#units[@]}; i++ )); do
   course_gradepoint=("${course_gradepoint[@]}" $(( units[i] * gradepoint[i] )) )  # Calculate course grade point
done


# to calculate the CGPA we need the total units and total grade points
total_units=0
total_gradepoints=0

# Calculate total units and total grade points
for (( i=0; i<${#units[@]}; i++ )); do  # or (( i=0; i<${#gradepoint[@]}; i++ )); do
    total_units=$((total_units + units[i]))
    # total_gradepoints=$(( total_gradepoints + units[i] * gradepoint[i] ))
    total_gradepoints=$(( total_gradepoints + course_gradepoint[i] ))  # Calculate total grade points
done


# # Calculate CGPA
cgpa=$(echo "scale=2; $total_gradepoints / $total_units" | bc)



# Calculate cumulative grade point average (CGPA) Category

cgpa_category=""
# if (( $(echo "$cgpa >= 4.5" | bc -l) )); then
#     cgpa_category="First Class"
# elif (( $(echo "$cgpa >= 3.5" | bc -l) )); then
#     cgpa_category="Second Class Upper"
# elif (( $(echo "$cgpa >= 2.5" | bc -l) )); then
#     cgpa_category="Second Class Lower"
# elif (( $(echo "$cgpa >= 1.5" | bc -l) )); then
#     cgpa_category="Third Class"
# else
#     cgpa_category="Pass"
# fi

# i need the in swicth case statement to determine the CGPA category
case 1 in
    $(echo "$cgpa >= 4.5" | bc -l)) cgpa_category="First Class" ;;
    $(echo "$cgpa >= 3.5" | bc -l)) cgpa_category="Second Class Upper" ;;
    $(echo "$cgpa >= 2.5" | bc -l)) cgpa_category="Second Class Lower" ;;
    $(echo "$cgpa >= 1.5" | bc -l)) cgpa_category="Third Class" ;;
    *) cgpa_category="Pass" ;;
esac

    # case $cgpa in
    #      $(echo "$cgpa >= 4.5" | bc -l) ))) grade="A"; grade_point=5; units=3 ;;
    #     MAT105) grade="A"; grade_point=5; units=4 ;;
    #     PHYS102) grade="A"; grade_point=5; units=2 ;;
    #     PHY104) grade="D"; grade_point=2; units=3 ;;
    #     PHY102) grade="E"; grade_point=1; units=3 ;;
    #     CHEM103) grade="A"; grade_point=5; units=2 ;;
    #     BIO104) grade="B"; grade_point=4; units=4 ;;
    #     ENG105) grade="C"; grade_point=3; units=2 ;;
    #     CS106)  grade="D"; grade_point=2; units=3 ;;
    # esac


# Display results in a formatted table
echo "Transcript for ${student_name}"
echo
printf "%*s\n" 90 | tr ' ' '='
printf "%-15s %-10s %-10s %-15s %-15s %-15s\n" "Course" "Units"  "Score" "Grade" "Grade Point" "Course GradePoint"
printf "%*s\n" 90 | tr ' ' '='

for (( i=0; i<${#courses[@]}; i++ )); do
    printf "%-15s %-10s %-10s %-15s %-15s %-15s\n" "${courses[i]}" "${units[i]}" "${student_score[i]}" "${grade[i]}" "${gradepoint[i]}" "${course_gradepoint[i]}"
done


printf "%*s\n" 90 | tr ' ' '-' 
printf "%-15s %-10s %-10s %-15s %-15s %-15s\n" "" "${total_units}" "" "" "" "${total_gradepoints}" 
printf "%*s\n" 90 | tr ' ' '='

echo "CGPA: ${cgpa}  (${cgpa_category})" 

printf "%*s\n" 90 | tr ' ' '='









echo

# for course in "${courses[@]}"; do
#     case $course in
#         MATH101) grade="A"; grade_point=5; units=3 ;;
#         MAT105) grade="A"; grade_point=5; units=4 ;;
#         PHYS102) grade="A"; grade_point=5; units=2 ;;
#         PHY104) grade="D"; grade_point=2; units=3 ;;
#         PHY102) grade="E"; grade_point=1; units=3 ;;
#         CHEM103) grade="A"; grade_point=5; units=2 ;;
#         BIO104) grade="B"; grade_point=4; units=4 ;;
#         ENG105) grade="C"; grade_point=3; units=2 ;;
#         CS106)  grade="D"; grade_point=2; units=3 ;;
#     esac
#     printf "%-15s %-10s %-10s %-15s\n" "$ %-15scourse" "$grade" "$grade_point" "$units"
# done    "Total Units"