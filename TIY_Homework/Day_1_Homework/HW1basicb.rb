user_num = "something"
sum = 0
count = 0
until user_num = ""
  puts "Please enter a number:"
  user_input = gets.chomp.to_f
    #elsif user_input.to_s.to_f.to_i != user_input.to_f
  if user_input.to_s != user_input
    puts "Please make sure you are entering a number."
  else
    sum = sum + user_input.to_f
    count += 1
  end
end
puts "You are all finished. The total of the numbers you have entered is: " + sum.to_s + "and the average of the numbers you have entered is: " + sum/count.to_s
