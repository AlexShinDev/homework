require 'json'

file = File.read('test_data.json')
data = JSON.parse(file)
piece_hash = Hash.new(0)
piece = Hash.new(0)
# selection = data.select {|d| d["piece_id"] == 25390812}
# p selection.sort{|x| x["start_time"]}
data.each do |d|
  piece_hash[d['piece_id']] += 1
end
p piece_hash.select!{|k,v| v == 4}
intersection = data & piece_hash
<% if !@intersection.empty? %>
  <%= @intersection.size %> Matches Found.
<% else %>
  No Matches Found.
<% end %>
# piece_hash.each do |k,v|
#   piece[v] += 1
# end

# p piece.sort_by{|k,v| v}




# errorPercentage = Hash.new{0}
# errorNum = 0

# p error = data.select {|d| d["status"].digits.first == 3}

# error.each do |err|
#   errorPercentage[err["piece_id"]] += 1
# end
# errorPercentage.each do |k,v|
#   if v > 1
#     errorNum +=1
#   end
# end

# p "#{errorNum/data.size}%"

# p error = data.map {|d| d["status"].digits.last}

# data.select! {|d| d['status'] == 8951}
# data.delete_if { |d| d["end_time"] == nil }
# status_times = []
# data.each do |d|
#   status_times << (d["end_time"]-d["start_time"])
# end

# p avg_time = status_times.reduce(:+)/status_times.size

# uniq_users = Hash.new(0)



# data.each do |work|
#   uniq_users[work["user_id"]] += 1
# end

# uniq_users = uniq_users.sort_by{|k,v| v}.reverse![0..4]

# uniq_users.each do |k,v|
#   puts "user#{k}: #{v}"
# end

# p data.map {|object| object["status"]}.uniq.count
