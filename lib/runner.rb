require 'colorize'
require './lib/event'
require './lib/games'

puts "What is the year for these games?".cyan
year = gets.chomp
year = year.to_i
games = Games.new(year)

puts "Please enter an event name".cyan
event_name = gets.chomp
puts "Please enter the ages that will be participating in this event".cyan
ages = gets.chomp
ages_array = ages.split(" ")
array = ages_array.map {|age| age.to_i}
new_event = Event.new(event_name, array)
games.add_event(new_event)

puts "Would you like to enter another event? (y/n)".cyan
user_anser = gets.chomp

until user_anser == "n" do
  puts "Please enter an event name".cyan
  event_name = gets.chomp

  puts "Please enter the ages that will be participating in this event".cyan
  ages = gets.chomp
  ages_array = ages.split(" ")
  array = ages_array.map {|age| age.to_i}

  new_event = Event.new(event_name, array)
  games.add_event(new_event)

  puts "Would you like to enter another event? (y/n)".cyan
  user_anser = gets.chomp
end

puts "Here is the summary for these events.".cyan

puts games.summary
