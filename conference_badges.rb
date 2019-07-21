require 'pry'


def badge_maker(name)
  # binding.pry 
  "Hello, my name is #{name}."
end 

def batch_badge_creator(attendees)
  attendees.map do |name|
    "Hello, my name is #{name}."
  end
end 

def assign_rooms(attendees)
  attendees.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end 
end 

def printer(attendees)
  batch_badge_creator(attendees).each do |name|
    puts name 
  end 
  
  assign_rooms(attendees).each do |room|
    puts room 
  end
end 