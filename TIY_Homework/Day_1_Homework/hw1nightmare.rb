nputs = Array.new

def med(paramarray) #method to find median number in array
  paramarray = paramarray.sort
  if paramarray.length.odd?
    return paramarray[(paramarray.length - 1)/2]
  else paramarray.length.even?
    return ( paramarray[paramarray.length/2] + paramarray[paramarray.length/2 - 1] )/2.to_f
  end
end

def avg(paramarray) #method to attempt finding average length of words in array
  total = 0
  for index in paramarray
    somevar = index.length
    total = total + somevar
  end
  length = paramarray.length
  average = init/length.to_f
  puts average
end

puts "Please input something:"
user_input = gets.chomp
nputs.push(user_input)

if !(user_input.to_f.to_s == user_input || user_input.to_i.to_s == user_input)
  using_words = true
  long_string = user_input
  puts "Ok, let's work with words."
else
  using_words = false
  sum = user_input.to_f
  count = 1
  puts "Rad, numbers it is."
end

while user_input != ""
  if using_words == true
    puts "Gimme another word please or press \"Enter\" to see the results."
    user_input = gets.chomp
    nputs.push(user_input)
    long_string = long_string + user_input
    if user_input.to_f.to_s == user_input || user_input.to_i.to_s == user_input
      puts "Please only enter words, not numbers. Goodbye!"
      user_input = false
      break
    end
    if user_input == ""
      puts nputs
      puts avg(nputs)
      puts long_string
    end


  else
    #nputs.push(user_input)
    puts "Another number please. Or press \"Enter\" to see the results."
    user_input = gets.chomp
    nputs.push(user_input)
    if user_input == ""
      user_input = false
      varz = med(nputs)
      puts nputs.length
      puts "The median is " + varz.to_s
      puts "You are all finished. The total of the numbers you have entered is: " + sum.to_s + " and the average of the numbers you have entered is: " + (sum/count).to_s
      break
    elsif !(user_input.to_f.to_s == user_input || user_input.to_i.to_s == user_input)
      puts "Please make sure you are entering a number. Goodbye!"
      user_input = false
      break
    else
      sum = sum + user_input.to_f
      count += 1
    end
  end
end
