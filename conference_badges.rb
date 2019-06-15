# Write your code here.
require 'pry'
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badge_messages = []
  attendees.each do |name|
    badge_message = badge_maker(name)
    badge_messages << badge_message
  end
  badge_messages
end

def assign_rooms(attendees)
  assigned_rooms = []
  attendees.each_with_index do |name, index|
    room_message = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    assigned_rooms << room_message
  end
  assigned_rooms
end

def printer(attendees)
  batch_badge_creator(attendees).map do |attendee|
    puts attendee
  end
  assign_rooms(attendees).map do |room|
    puts room
  end
end
