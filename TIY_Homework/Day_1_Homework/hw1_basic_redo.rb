user_input = true
sum = 0
count = 0
while user_input
  puts "Please input a number"
  user_input = gets.chomp
  if user_input == ""
    puts "All finished"
    user_input = false
  elsif user_input.to_i.to_s == user_input || user_input.to_f.to_s == user_input
    sum += user_input.to_f
    count += 1
  else
    puts "Sorry, not a number. try again."
  end
end

puts sum
puts count
puts sum / count

# Re-do 3/20/16
