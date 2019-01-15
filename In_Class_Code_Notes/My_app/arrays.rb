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
