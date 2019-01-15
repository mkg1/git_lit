require "./person"

iphone = Phone.new("Apple", "iPhone 7", "Thriller")
mason = Person.new("Mason", iphone)
mason.say_name
mason.receive_call

# screen shot: cmd shift 3
# cmd shift 4

if input_amount[0].to_i == 0
  input_symbol = input_amount[0]
  input_amount = input_amount[1..-1]
else
  puts "Enter currency symbol:"
  input_symbol = gets.chomp
end

try:

if @amount != nil && @symbol == nil
  breaker = amount.split("", 2)
  @amount = breaker[1].to_f
  @symbol = code[breaker[0]]
