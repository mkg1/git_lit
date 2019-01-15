user_num = true
sum = 0
count = 0
while user_num
  puts "Please enter a number:"
  user_input = gets.chomp
  if user_input == ""
    user_num = false
    puts "You are all finished. The total of the numbers you have entered is: " + sum.to_s + " and the average of the numbers you have entered is: " + (sum/count).to_s
  elsif !(user_input.to_f.to_s == user_input || user_input.to_i.to_s == user_input)
    puts "Please make sure you are entering a number."
  else
    sum = sum + user_input.to_f
    count += 1
  end
end
