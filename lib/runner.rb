require_relative '../lib/games'
require_relative '../lib/event.rb'
require 'pry'

puts "Welcome to the Games\nEnter the year your game takes place"
year = 0
    until year.digits.length == 4
      puts "Remeber to enter 4 numbers for the year"
      year = gets.chomp.to_i
    end
  games = Games.new(year)
more_events = true
while more_events = true
    puts "Enter the name of your event"
    name = gets.chomp
    puts "next enter the ages of your participants one at a time"
    puts "Remeber no participant can be over 100 years old"
    puts "Type 'done' when you are done entering participants for this event"
    ages = []
    age = 0
      until age.to_s.length >= 4
        ages << (age = gets.chomp).to_i
      end
    ages.pop
    name = Event.new(name, ages)
    games.add_event(name)
    choice = 0
    puts "Add another event? enter Y for yes or N for no"
    choice = gets.chomp
    if choice.downcase == ("n" || "no")
      break
    end
end

puts "Here are your game results"
print games.summary
