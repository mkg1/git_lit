#
# begin
#   raise "Hello I am a random runtime error"
# rescue => e
#   p e.message
#   p e.backtrace
# end
#
#
# 2 + 3
#
# 2.plus(3)
#
# wad1.==(wad2)



class Weight
  def initialize (amount, unit)
    @amount = amount
    @unit = unit
  end

  def to_s
    "I weigh #{@amount}{@unit}"
  end

  def +(other)
    @amount + other.amount
  end

  def amount
    @amount
  end
end

puts Weight.new(2, :lbs)
a = Weight.new(3, :lbs)
b = Weight.new(4, :lbs)

c = a + b

puts "Total: #{c}"
puts "a: #{a}"
puts "b: #{b}"
