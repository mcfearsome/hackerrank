#!/bin/ruby
# Find the largest "Decent Number" having N digits
# A Decent Number has the following properties:
#
# Its digits can only be 3's and/or 5's.
# The number of 3's it contains is divisible by 5.
# The number of 5's it contains is divisible by 3.
# If there are more than one such number, we pick the largest one.
# Input Format
#
# The first line is an integer, T, denoting the number of test cases.
#
# The T subsequent lines each contain an integer, N, detailing the number of digits in the number.
#
# Output Format
#
# Print the largest Decent Number having N digits; if no such number exists, tell Sherlock by printing -1.
# cat sherlock_and_the_beast_input.txt | ruby sherlock_and_the_beast.rb
t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    fives = (n/3).floor
    fives -= 1 while fives != 0 and (n - (fives*3)) % 5 != 0
    fives *= 3

    threes = (n - fives)
    if fives == 0 and (n % 5 == 0)
      threes = n/5
    elsif fives == 0
      threes = 0
    end

    if fives == 0 and threes == 0
      s = -1
    else
      s = "".rjust(fives,"5").ljust(n,"3").to_i
    end
    puts s
end
