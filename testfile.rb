require_relative 'enumerable'

# Sample usage of all our Enumerable methods

my_array = [1,2,4,5]

# my_each
my_array.my_each { |item| puts item.to_s }

# my_each_with_index
my_array.my_each_with_index { |n, m| puts "#{m}: #{n}" }

# my_select
p my_array.my_select { |n| n > 3 }

# my_all
puts "My items are all greater than zero: #{my_array.my_all? { |n| n > 0 }}"

# my_none
puts "None of my item is greater than 4: #{my_array.my_none? { |n| n > 4 }}"

# my_any?
puts "is any of my items greater than 4?: #{my_array.my_any? { |n| n > 4 }}"

# my_map
puts my_array.my_map { |n| n * 2 }

# my_count
puts "There are #{my_array.my_count} items in my_array"