#! /bin/bash

echo {a,19,z,berry,44}  #a 19 z berry 44
echo {Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec}  # Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
echo {1,2,3,4,5,6,7,8,9,10}  # 1 2 3 4 5 6 7 8 9 10
echo {1..10}  #   1 2 3 4 5 6 7 8 9 10
echo {a..z}  #   a b c d e f g h i j k l m n o p q r s t u v w x y z
echo {10..1}  #   10 9 8 7 6 5 4 3 2 1
echo {z..a}  #   z y x w v u t s r q p o n m l k j i h g f e d c b a
echo {1..50}  #   1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
echo {1..50..2}  #   1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49

#!/bin/bash

mkdir -p YearlyTask

days_in_month=(31 28 31 30 31 30 31 31 30 31 30 31)

for ((month=1; month<=12; month++)); do
    mkdir -p "YearlyTask/Month$(printf "%02d" $month)"
    
    # Determine the number of days in the current month
    days=${days_in_month[$((month-1))]}

    # Create files for each day in the current month
    for ((day=1; day<=$days; day++)); do
        touch "YearlyTask/Month$(printf "%02d" $month)/day$(printf "%02d" $day).txt"
    done
done
