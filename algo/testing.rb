class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

puts 'Testing code'
puts

reservation = HotelReservation.new(customer_name: "John", date: "16-07-18", room_number: "300")
p reservation

reservation.room_number= "400"
result = reservation.room_number
puts result
if result == "400"
  puts "PASS"
else 
  puts "Please inspect the writer method for room number."
end

reservation.add_a_fridge
result = reservation.amenities
p reservation.amenities
if result.include? "fridge"
  puts "PASS"
else
  puts "Please inspect the add_a_fridge method."
end

reservation.amenities = []

reservation.add_a_crib
result = reservation.amenities
p reservation.amenities
if result.include? "crib"
  puts "PASS"
else
  puts "Please inspect the add_a_crib method."
end  

reservation.amenities = []

reservation.add_a_custom_amenity("microwave")
result = reservation.amenities
p reservation.amenities
if result.include? "microwave"
  puts "PASS"
else
  puts "Please inspect the add_a_custom_amenity method."
end  