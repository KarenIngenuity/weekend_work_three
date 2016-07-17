# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  base_word_array = base_word.chars
  mutation_array = mutation.chars
  response_array = []
  puts "base word:"
  p base_word_array
  puts "mutation:"
  p mutation_array 
  mutation_array.each do |letter|
    if base_word_array.include? letter
      response = "yes"
    else
      response = "no"
    end
    response_array << response
  end
  p response_array
  if response_array.include? "no"
    return false
  else
    return true
  end
end


# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end