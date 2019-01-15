require 'httparty'
#call httparty class
deck = HTTParty.get("http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1")
puts deck
puts deck["deck_id"]

#draw a card
id = _
cards = HTTParty.get("http://deckofcardsapi.com/api/deck/#{deck_id}/draw/?count=2")

#####

puts "Enter a zipcode:"
zip = gets.chomp

response = HTTParty.get(#{url} with string interpolation where zipcode goes)

puts "Location: #{response["current_observation"]["display_location"]["full"]}"
puts "Current Temp (F): #{response["current_observation"]["temp_f"]}"
puts city, state

puts current temp
