def badge_maker(name)
  return "Hello, my name is #{name}."
end

# def batch_badge_creator(array)
#   speakers = []
#   array.each do |speaker|
#     speakers.push(badge_maker(speaker))
#   end
#   return badge_maker(speaker)
# end
#solved with each, uses more code


def batch_badge_creator(array) #define the method 
  array.collect do |speaker| #iterate over each array element and creates new array 
      badge_maker(speaker) #returns the new array
  end
end
#solved with collect, much cleaner


def assign_rooms(speakers)
  speakers.collect.with_index do |speaker, index| #iterates and returns new array
    "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
end


def printer(attendees)
  batch_badge_creator(attendees).collect do |attendee|
    puts attendee
  end
  assign_rooms(attendees).collect do |attendee|
    puts attendee
  end
end