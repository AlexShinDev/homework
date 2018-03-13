require 'Prime'

def euler7
  n_arr = []
  Prime.each do |prime|
    n_arr << prime
    break if n_arr.length == 10001
  end
  return n_arr.pop
end

p euler7
# Problem 1 (https://projecteuler.net/problem=1) is below:

# Multiples of 3 and 5

# # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# # Find the sum of all the multiples of 3 or 5 below 1000. 

# #1
# def m35(number)
#   num_arr = [*1..number].select! {|num| num % 5 == 0 || num % 3 == 0}
#   num_arr.reduce(:+)
# end

# p m35(999)

# #2

# def fib_sum(acc, current, sums = [1])
#   if acc <= 4000000
#     sums << acc
#     fib_sum(acc+current, acc, sums)
#   else 
#     sums
#     sums.select{|num| num.even?}.reduce(:+)
#   end
# end

# # p fib_sum(2, 1)
# 235125
# 235124
# def largest_prime(number)
#   number.prime? ? number : largest_prime(number - 1)
# end

# p largest_prime(600851475143)

# def small_multiple(top, nums = [])
#   Prime.each(20) do |num|
#     nums << num
#   end
#   p nums
#   nums.reduce(:*)
# end

# p small_multiple(20)




