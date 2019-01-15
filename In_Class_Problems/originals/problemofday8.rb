a = ["I hear that Dana is awesome.", "What's up with Danai", "dana is cool", "dana's mug is cool"]

target = "Dana"

def find_names (a, target)
  results = []
  a.each do |a|
    if a.downcase.split.include?(target.downcase)
      results << a
    end
  end
  return results
end

p find_names(a, target)
