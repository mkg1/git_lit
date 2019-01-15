class Album
  def initialize (name, quantity, price)
    @name = name
    @quantity = quantity
    @price = price
  end

  def name
    return @name
  end

  def stock
    return @quantity
  end

  def sell_one
    @quantity -= 1
  end

  def add_stock(amount)
    @quantity += amount
  end
end

class Artist
  def initialize (name)
    @name = name
  end
end

adele = Album.new("25", 3, 24.50)
puts "We have #{adele.stock} copies"

adele.sell_one
puts "We have #{adele.stock} copies"

adele.add_stock(4)
puts "we have #{adele.stock} copies"
