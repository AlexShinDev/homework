# 1. Write a recursive function that prints out the word “INCEPTION” 15 times.
# 2. Write a recursive function that prints out all even numbers from 0 to 100.
# 3. Write a recursive function that adds the sum of all numbers from 1 to 1000.
# 4. Write a recursive function that accepts an array of numbers and returns the sum.
# 5. Write a recursive function that accepts a number and returns its factorial. (The factorial of 5, for example, is 5 * 4 * 3 * 2 * 1 = 120.)

def inception(num)
  puts "inception" + num.to_s
  if num < 15
    inception(num + 1)
  end
end

inception(1)

def even(num)
  p num
  if num < 100
    even(num + 2)
  end
end

even(0)

def sum(num, total)
  if num == 1000
      return total
  
  else num <= 1000
    sum(num + 1, total += num)

  end
  
end
p sum(1, 1000)

p (1..1000).reduce(:+)

def arr_sum(start, ending, total)
  if start == ending
    return total + start
  else
    arr_sum(start + 1, ending, total += start)
  end
end

p arr_sum(50, 60, 0)

p (50..60).reduce(:+)

def factorial(num, total)
  if num == 0 
    return total
  else
    factorial(num -1, total *= num)
  end
end

p factorial(5, 1)
