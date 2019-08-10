# method that takes an argument, a name, and spits out a string

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(list)
 list.collect { | name | badge_maker ( name )   }
end

def assign_rooms(list)
 list.each_with_index.map {|sp, idx| "Hello, #{sp}! You'll be assigned to room #{idx+1}!"}
end

def printer(name)
  batch_badge_creator(name).each do |badge|
    puts badge
  end
  assign_rooms(name).each do |ass|
    puts ass
  end
 end