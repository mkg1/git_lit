# require 'set'
#
# #array = []
# array = Set.new #a set is an array with no duplicates
#
# loop do
#   puts "Give me a name."
#   name = gets.chomp
#   break if name == ""
#   array << name #unless array.include?(name)
# end
# p array
#___________


array = []
phones = []

loop do
  puts "Give me a name."
  name = gets.chomp
  break if name == ""
  array << name #unless array.include?(name)
  puts "give me #{name}'s phone number"
  phone = gets.chomp
  phones << phone
end

loop do
  puts "Give me a name, I'll give you a number."
  name = gets.chomp
  break if name == ""
  i = names.index(name)
  if i == nil
    puts "no name found"
  else
    puts phones[i]
  end
end

p array



_____
#array in a hash

hash = {"Mason" => ["111", "222"],
        "Blake" => ["333"]}

puts hash["Mason"][0]  #111 #or
masons_numbers = hash["Mason"]
puts masons_numbers[0]

#hash in a hash
hash = {"Mason" => {"home" => "111",
                    "mobile" => "222"},
        "Blake" => {"home" => "333"}}
puts hash["Mason"]["home"] #111  #or
masons_numbers = hash["Mason"]
puts masons_numbers["home"]
