def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.collect {|attendee| badge_maker(attendee)}
end

def assign_rooms(attendees)
  assigned_rooms = []
  attendees.each_with_index do |attendee, index|
    assigned_rooms << "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
  end
  assigned_rooms
end

def printer(attendees)
  batch_badge_creator(attendees).each {|badge| puts badge}
  assign_rooms(attendees).each {|assignment| puts assignment}
end

attendees = ["Ghandi","AOC","Gloria","Obama"]
printer(attendees)
