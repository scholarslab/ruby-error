#!/usr/bin/env ruby

# Population Growth (Are you serious?)
# 
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# Find the sum of all the even-valued terms in the sequence which do not exceed
# 4 million.

MAX = 4000000

fib_seq = [1, 2]
sum = 2
while true
  next_fib = fib_seq[-1] + fib_seq[-2]
  fib_seq.push(next_fib)
  break if fib_seq[-1] >= MAX
  sum += next_fib if next_fib.even?
end

puts 'Sum of even numbers in Fibonacci sequence less than 4,000,000: ' + sum.to_s + '.'

