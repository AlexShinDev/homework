# Fibonacci numbers are numbers that follow this pattern: 1, 1, 2, 3, 5, 8, 13, 21, 34, ... that is, each number is the sum of the two immediate numbers that precede it. Write a recursive function that prints out the list of fibonacci numbers up to 987.

# def fibonacci(initial, sum)
#   p total = initial + sum
#   fibonacci(sum, total) if sum < 610
# end

# fibonacci(1, 0)

# Write a recursive function that reverses a string.

# def split_string(string)
#   arr = string.split('')
#   r_arr = []
#   reverse_string(arr, r_arr)
# end

# def reverse_string(string, arr, acc=[])
#   if arr.empty?
#     return acc.join('')
#   else
#     acc << arr.pop
#     reverse_string(string, arr, acc)
#   end
# end

# p reverse_string('orange', [])

# Write a recursive function that accepts two numbers (a numerator and denominator), and returns the remainder if you divide the numerator by the denominator. The catch: Do not use the modulo operator!

# def remainder(numerator, denominator)
#   numerator <= denominator ? numerator : remainder(numerator -= denominator, denominator)
# end

# p remainder(23, 5)

# Write a recursive function that accepts two numbers and calculates one by the power of the other. For example, if the numbers were 2 and 5, it would calculate 25. Do not use any built-in power operations provided by your computer language.

# def power(base, power_of, total=1)
#   power_of == 0 ? total : power(base, power_of -= 1, total *= base)
# end

p power(3, 3)

