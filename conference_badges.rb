def badge_maker(name)
  return "Hello, my name is #{name}."
end 

def batch_badge_creator(array)
  new_array = [] 
  array.each {|name| new_array << badge_maker(name)}
  new_array
  # array.map {|name| new_array << badge_maker(name)} 
end 

def assign_rooms(speakers) 
  list_of_speakers = [] 
  speakers.each_with_index {|name, index| list_of_speakers << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  } 
  list_of_speakers
end 

def printer(attendees)
  batch_badge_creator(attendees).each {|name| puts name}
  assign_rooms(attendees).each {|room| puts room}
end 


