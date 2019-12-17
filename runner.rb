require './lib/games'
require './lib/event'


puts "Welcome!  Please enter a year of an Olympic games"
  year = gets.chomp
  until year.length == 4
    puts "That's not a valid year. Please enter a 4 digit year:"
    year = gets.chomp
  end
  games = Games.new(year)


puts "Olympic games #{games.year}!!! Please create events.  How many events would you like to create?"
  event_count = gets.chomp
  until event_count.to_i > 0
    puts "That's not a valid number. Please enter a number:"
    event_count = gets.chomp
  end
puts "You want to create #{event_count} events.  You will need to enter the name of the event and the ages of all participants"
  event_count.to_i.times do
    puts "Name of event:"
      event_name = gets.chomp
    puts "Age of participants, please seperate with a comma"
      ages = gets.chomp
        if ages.include?(",") == true
          ages = ages.gsub(/ /, "").split(",")
        else ages = ages.split
        end
      ages = ages.map {|age| age.to_i}
    event = Event.new(event_name, ages)
    games.add_event(event)
  end

puts "Here's the stats for the #{games.year} Olympics:"
puts games.summary
