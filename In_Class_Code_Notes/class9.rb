# a = [1, 2, 3, 4]
# p a.map {|n| n*n}
#
# class Array
#   def our_map
#     results = []
#     self.each do |thing|
#       results << yield (thing)
#     end
#     results
#   end
# end
#
# p a.our_map {|n| n*n}
#
# p a.our_map {|n| n*n*n}
#_____________

class Array
  def our_map
    results = []
    self.each do |thing|
      results << yield(thing)
    end
    results
  end

  def our_select
    results = []
    self.each do |thing|
    results << thing if yield(thing)
    end
    results
  end
end

a = [1, 2, 3, 4]

p a.our_map {|n| n*n}

p a.our_map {|n| n*n*n}

p a.select {|n| n % 2 == 0} # or you could do n.even?

b = ["Da-me", "Mason", "Blake", "MasonMatthews"]
p b.our_select {|n| n.length > 5}
