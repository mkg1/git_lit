array = ["Daniel", "Damien", "Da-me", "Jim"]

#puts array.all? {|n| n[0] == "D"}
#puts array.any? {|n| n[0] == "D"}
#puts array.each {|n| n[0] == "D" puts n}
#puts array.select {|n| n[0] == "D"}
puts array.reject {|n| n[0] == "D"}
