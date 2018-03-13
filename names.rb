names_array = File.readlines('names.csv')
new_array = []

names_array.each do |name|
  new_array << name.split(",")
end

new_array.sort!

new_array.map! {|name| name.reverse.join(" ").gsub(/\n/,'')}

p new_array
# p new_array

