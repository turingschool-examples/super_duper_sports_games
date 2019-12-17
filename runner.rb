require './lib/games'
require './lib/event'


puts "Welcome!  Please enter a year of an Olympic games"
  year = gets.chomp
  games = Games.new(year)

puts "Olympic games #{games.year}!!! Please create events.  How many events would you like to create?"
  event_count = gets.chomp
puts "You want to create #{event_count} events.  You will need to enter the name of the event and the ages of all participants"
  event_count.to_i.times do
    puts "Name of event:"
    event_name = gets.chomp
    puts "Age of participants, please seperate with a comma"
    ages = gets.chomp
    ages = ages.split(", ")
    ages = ages.map {|age| age.to_i}
    event = Event.new(event_name, ages)
    games.add_event(event)
  end

puts "Here's the stats for the #{games.year} Olympics:"
puts games.summary
