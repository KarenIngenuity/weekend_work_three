def sum_of_range(array)
  array = array.sort
  num_of_numbers = array.last - array.first
  current_number = array.first
  sum = 0
  (num_of_numbers + 1).times do
    sum = sum + current_number 
    current_number = current_number + 1
  end
  puts "next number:"
  puts current_number
  puts "sum:"
  puts sum
end


result = sum_of_range([1, 4])
puts "here's the result:"
puts result

result = sum_of_range([2, 8])
puts "here's the result:"
puts result

