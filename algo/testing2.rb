hello_array = "hello".chars
p hello_array
response_array = []
hello_array.each do |letter|
  if "jelloer".include? letter
    response = "yes"
  else 
    response = "no"
  end
  response_array << response
  p response_array
  if response_array.include? "no"
    result = false
  else 
    result = true
  end

  puts result
end

