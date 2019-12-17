require_relative "./lib/event"
require_relative "./lib/games"

p "Welcome to Super Duper Sports Games."
puts "Please enter a year for the games: "
year = gets.chomp.to_i

new_games = Games.new(year)

p "How many events are at these games:"
num_events = gets.chomp.to_i

num_events.times do |event|
  p "What is the name of is event?"
  name = gets.chomp

  p "What are the ages of the participants? (Separated by commas)"
  ages = gets.chomp.split(",")
  ages_to_i = ages.map {|age| age.strip.to_i}

  new_games.add_event(Event.new(name, ages_to_i))
end

print new_games.summary
