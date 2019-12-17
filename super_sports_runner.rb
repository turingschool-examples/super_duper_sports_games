
require './lib/event'
require './lib/games'

def start
  puts "Welcome! What year would you like for your games? Ex: '1999' "
  user_year = gets.chomp.to_i
  user_games = Games.new(user_year)

  response = "Y"
  while response == "Y"
    puts "What is the event you want to create for your games?"
    user_event_name = gets.chomp.to_s
    puts "__________________________________________________"
    puts "Input the ages for your event one at a time."
    puts "When done, leave input empty and press return key."
    puts "Ex: 18"
    puts "__________________________________________________"
    user_age = []
    while true
      input = gets.chomp
      break if input.empty?
      user_age << input
      user_ages = user_age.map {|age| age.to_i}
    end
    user_event = Event.new(user_event_name, user_ages)
    user_games.add_event(user_event)

    puts "Do you want to create a new event for your games? Y or N?"
    response = gets.chomp.upcase
  end

  puts "Would you like a summary of your event names? Y or N?"
  user_response = gets.chomp.upcase
  if user_response == "Y"
    games_name = user_games.events.map {|event| event.name}
    games_name.each {|name| p name}
    user_games.summary
  elsif user_response == "N"
    p "Cool!"
  end

  puts "Thanks for playing!"
end


start
