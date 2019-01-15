# if true
#   puts "True"
# else
#   puts "False"
# end
#
# if false
#   puts "True"
# else
#   puts "False"
# end
#
# if nil
#   puts "True"
# else
#   puts "False"
# end
#
# if 0
#   puts "True"
# else
#   puts "False"
# end

#if doesn't have to take a boolean.  nil and false are "falsey". Everything else is truth-y

#cell phone assignment
#____________
# class Phone
#   def initialize(phone_make, phone_model, phone_ringtones = ["Bring bring"]) #this runs when you call .new on something. Bring bring is a default. that array could be replaced with =nil and get nohthing
#     puts "I am getting set up"
#     @make = phone_make
#     @model = phone_model
#     @ringtones = phone_ringtones
#   end
#
#   def ring
#     #puts "Bring bring" unless @ringtone #another way to set default ringer
#     @ringtones.each do |r|
#       puts r
#     end
#   end
#
#   def get_model
#     return "#{@make} #{@model}"
#   end
# end
#
# iphone = Phone.new("Apple", "iPhone 7 Plus", ["Macarena", "Chicken dance"]) #making new empty object, iphone, from Phone class. "." is telling it to look inside the class for methods that are called
# galaxy = Phone.new("Samsung", "Galaxy S6")
# iphone.ring #calling method "ring" on instance of Phone class
# puts iphone.get_model
# puts galaxy.get_model
# iphone.ring

class Phone
  def initialize(make, model, ringtone) #this runs when you call .new on something. Bring bring is a default. that array could be replaced with =nil and get nohthing
    puts "I am getting set up"
    @make = make
    @model = model
    @ringtone = ringtone
  end

  def ring
    puts @ringtone
  end

  def get_model
    return "#{@make} #{@model}"
  end
end

# two = Apple.new(3)
# three = Apple.new(3)
# puts two + three #method error
#
# puts two == three #returns false
#
# puts two #puts memory location
# puts three #puts different memory location so they're not equal
# #if you put two = three, then they would point to the same spot in memory
