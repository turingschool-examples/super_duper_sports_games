require './lib/games'
require './lib/event'

puts "Welcome! In what year will your games be played?"

year = gets.chomp
puts "The year is #{year}"
games = Games.new(year)

3.times do
  puts "What is the name of the event you would like to be played at the games?"
  event_1 = gets.chomp
  puts "#{event_1} will be played during the #{year} games!"
  puts "What is age of the first participant on your #{event_1} team?"
  p_1 = gets.chomp.to_i
  puts "What is age of the second participant on your #{event_1} team?"
  p_2 = gets.chomp.to_i
  puts "What is age of the third participant on your #{event_1} team?"
  p_3 = gets.chomp.to_i
  puts "What is age of the fourth participant on your #{event_1} team?"
  p_4 = gets.chomp.to_i
  puts "What is age of the fifth participant on your #{event_1} team?"
  p_5 = gets.chomp.to_i

  participants = [p_1, p_2, p_3, p_4, p_5]

  user_event = Event.new(event_1, participants)
  games.add_event(user_event)
end





puts games.summary
