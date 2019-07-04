def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.collect{|attendee| badge_maker(attendee)}
end

def assign_rooms(attendees)
  count = 0 
  attendees.map {|person| "Hello, #{person}! You'll be assigned to room #{count += 1}!"}
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room|
    puts room
  end
end