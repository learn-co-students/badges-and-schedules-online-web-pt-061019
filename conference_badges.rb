
def badge_maker(name)
  return "Hello, my name is #{name}."

end

def batch_badge_creator(array)
  array.map do |speaker|
    badge_maker(speaker)
  end
end

def assign_rooms(names)
names.collect.with_index do |string, index|
      "Hello, #{string}! You'll be assigned to room #{index + 1}!"
    end
end

def printer(arrays)
batch_badge_creator(arrays).each do |method|
puts method
end
assign_rooms(arrays).each do |method|
puts method
end

end
