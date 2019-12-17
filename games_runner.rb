require_relative './lib/games'
require_relative './lib/event'

puts 'Enter a year for the Games'
games_year = gets.chomp.to_i

new_games = Games.new(games_year)

puts "What is the name of your new Event?"
event_name = gets.chomp

puts "What are the competitor ages in #{event_name} (Separated by a comma)?"
competitor_ages = gets.chomp.split(',')

ages = competitor_ages.map { |age| age.strip.to_i }

new_event = Event.new(event_name, ages)

new_games.add_event(new_event)

print new_games.summary