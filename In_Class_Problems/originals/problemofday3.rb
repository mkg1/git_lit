student_phone_numbers = {}

loop do
  puts "What is your name?"
  name = gets.chomp
  break if name == ""
  puts "What is your number?"
  number = gets.chomp
  student_phone_numbers["#{name}"] = number
end

loop do
  puts "Who do you want to look up?"
  lookup = gets.chomp
  break if lookup == ""
  puts student_phone_numbers["#{lookup}"]
end
