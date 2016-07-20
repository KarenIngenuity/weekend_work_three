# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
  attr_accessor :power, :volume, :channel

  def initialize(tv_attributes)
    @power = tv_attributes[:power] #true/false
    @volume = tv_attributes[:volume] #integer
    @channel = tv_attributes[:channel] #integer
  end

end

class Remote
  attr_accessor :tv

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == true
      @tv.power = false
    else 
      @tv.power = true
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel) #integer
    @tv.channel = channel
  end
end

puts "Testing code"
puts


tv = TV.new(power: true, volume: 5, channel: 20)
p tv
puts tv.power
puts
result = tv.power
puts result
if result == true
  puts "PASS"
else
  puts "Please inspect the power attribute"
end
puts
result = tv.volume
puts result
if result == 5
  puts "PASS"
else
  puts "Please inspect the volume attribute"
end  
puts
result = tv.channel
puts result
if result == 20
  puts "PASS"
else
  puts "Please inspect the channel attribute"
end  
puts

remote = Remote.new(tv)
p remote
puts
result = remote.tv
puts result
if result == tv
  puts "PASS"
else 
  puts "Please inspect the tv attribute"
end
puts

puts tv.power
remote.toggle_power
result = tv.power
puts result
if result == false
  puts "PASS"
else
  puts "Please inspect the toggle_power instance method."
end
puts

puts tv.volume
remote.increment_volume
puts tv.volume


