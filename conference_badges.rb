# Write your code here.

def badge_maker(name)
  return "Hello, my name is #{name}."
end

#names = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(array)
  counter = 0
  array.each do |name|
    array[counter] = badge_maker(name)
    counter +=1
  end
  return array
end

def assign_rooms(list)
  new_array = []
  list.each do |name|
    index = list.index(name)
    new_array[index] = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  return new_array
end

def printer (array)
  new_array = batch_badge_creator(array) + assign_rooms(array)
  
  puts new_array
end

