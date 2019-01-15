# count = 0
#
# while count < 5
#   puts "I am looping"
#   count += 1
# end
____
# 5.times do
#   puts "I am looping"
# end
____
# (1..5).each do |num|
#   puts "This is loop #{num}"
# # end
#
# array = []
#
# 5.times do
#   puts "give me a student name"
#   array << gets.chomp
# end
#
# array.each do |name|
#   puts "#{name} is in this class"
# end
_____
# def talk_to_user
#   puts "Please enter an integer"
#   #user_input = gets.chomp #creates problem of scope when this var is accessed outside of method
#   return gets.chomp #use return instead
# end
#
# count = 0
# sum = 0.0
# user_input = talk_to_user #calling method
# until user_input == ""
#   if user_input.to_i.to_s == user_input || user_input.to_f.to_s == user_input
#     sum = sum + user_input.to_f
#     count = count + 1
#   end
#   user_input = talk_to_user
# end
#
# average = sum/count
# puts "you must be done entering your numbers"
# puts "your count is " + count.to_s
# puts "your sum is " + sum.to_s
# puts "your average is " + average.to_s

_____

def talk_to_user
  puts "Please enter an integer"
    return gets.chomp
end

# def is_a_number?(string) #<- parameter can be called anything, not just user_input
#   return string.to_i.to_s == string || string.to_f.to_s == string
# end

def is_a_integer?(string) #<- parameter can be called anything, not just user_input
  return string.to_i.to_s == string
end

def is_a_float?(string) #<- parameter can be called anything, not just user_input
  return string.to_f.to_s == string
end

count = 0
sum = 0.0
user_input = talk_to_user #calling method
until user_input == ""
  # if is_a_number?(user_input) #can use one method or two, like below
  if is_an_integer?(user_input) || is_a_float?(user_input)
    sum = sum + user_input.to_f
    count = count + 1
  end
  user_input = talk_to_user
end

average = sum/count
puts "you must be done entering your numbers"
puts "your count is " + count.to_s
puts "your sum is " + sum.to_s
puts "your average is " + average.to_s
