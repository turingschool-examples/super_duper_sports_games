require './lib/event'
require


puts "Welcome to the Super Duper Sports Games!\n"
puts "Please enter the year of the games; "
print "> "
year = gets.chomp

puts "\nPlease enter the name of the first event: "
print "> "
event_name = gets.chomp


puts "\nPlease enter the ages of each individual; "
individual_ages = gets.chomp

until individual_ages.split.map {|age| age.to_i }.sample > 0
  puts "Please enter valid ages; "
  print "> "
  individual_ages = gets.chomp
end


games = Games.new(year,
event = Event.new(
