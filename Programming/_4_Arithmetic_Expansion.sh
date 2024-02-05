#! /bin/bash

echo $((4 + 5))
x=9
y=5
z=6
echo $(($x + $y)) #= 14 (addition)
echo $(($x - $y)) #= 4  (subtraction)
echo $(($x * $y)) #= 45  (multiplication)
echo $(($x ** $y))  # 9^5
echo $(($x / $y)) #= 1 (division: reasons for 1 is because arithmetic expansion does not handle decimal)
echo $(($x % $y)) #= 4 (modulus: 4 is the reminder of 9/5 )
decimalVal=$(echo "scale=2; $x/$y" | bc )  # this is necessary for calculating the decimal first before using the value
echo "$x / $y = $decimalVal ( using bc)"

# result=$((4 + 5))
# echo $result


