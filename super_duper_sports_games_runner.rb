require './lib/games'
require './lib/event'

puts "Welcome to Super Duper Sports Games!!!"

puts "Please enter the event year below"
puts ">"

year = gets.chomp

games = Games.new(year)

puts "Great! thank you for your input. You currently have #{games.events.length} events planned. Please enter the name of your first event below."

puts ">"

loop do
    event_name = gets.chomp

    puts "And what are the ages of the participants?"

    event_ages = gets.chomp

    games.add_event(Event.new(event_name, event_ages.split(' ').map { |age| age.to_i}))
    puts "You have just added #{event_name} to your event!"

    puts "You now have #{games.events.length} events scheduled."

    puts 'Would you like to add another event? Yes or No'

    add_another = gets.chomp
break if add_another == "No"

    puts "What is the name of your next event?"

    puts ">"
end

puts games.headers

games.events.each do |game|
  puts games.event_summary(game)
end
