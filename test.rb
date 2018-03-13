range = [*'0'..'9',*'a'..'z']
p Array.new(8){ range.sample }.join


# arr = [3,4,1,2]
# k = 3
# def nonDivisibleSubset(k, arr)
#     new_arr = []
#     arr.each do |num|
#        p arr.all? {|n| (num + n) % k != 0}
#     end
#     return new_arr
# end
# p nonDivisibleSubset(k, arr)
# arr = [2,3,6,5,7,2]

# def cutTheSticks(arr)
#   sticks_cut = arr.length
#   min = arr.min
#   arr.map! {|num| num - min}

#   arr.each_with_index do |num, index|
#     arr.slice!(index) if num <= 0
#   end

#   puts "length_of_cut: #{min}         sticks_cut: #{sticks_cut}"
#   cutTheSticks(arr) if arr.any?
# end

# cutTheSticks(arr)
# require 'date'
# def normalise(input_time)
#   now = DateTime.strptime("#{input_time}",'%s')
#   time = DateTime.parse(now.strftime("%Y-%m-%dT00:00:00%z"))
#   time = time - time.wday
# end



# p normalise(0)

p 4.0 + 2