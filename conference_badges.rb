# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end 

def batch_badge_creator(speakers)
  badge_messages = speakers.map {|name| badge_maker(name)}
end

def assign_rooms(speakers)
  room_assignments = []
  
  speakers.each_with_index {|name, index| room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
  room_assignments
end

def printer(speakers)
  badges = batch_badge_creator(speakers)
  rooms = assign_rooms(speakers)
  
  badges.each {|name| puts "#{name}"}
  rooms.each {|room| puts "#{room}"}
end