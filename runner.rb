require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

puts "Welcome! Type in the year for your game: "
user_input_year = gets.chomp
user_input_year.to_i
games = Games.new(user_input_year)

puts "Olympic games #{games.year}!!! Please create some events for your Oympic games.  How many events would you like to create?"
event_counter = gets.chomp
event_counter.to_i

puts "You'd like to create #{event_counter} events.  We'll need the name of each event and all of the particpant ages: "
event_counter.to_i.times do
  puts "Please enter event name: "
  event_name = gets.chomp
  puts "Please list the age of the participants, separated by a comma: "
  ages = gets.chomp
  ages = ages.split(", ")
  ages = ages.map {|age| age.to_i}
  event = Event.new(event_name, ages)
  games.add_event(event)
end

puts "Here's the stats for the #{games.year} Olympics: "
puts games.summary
