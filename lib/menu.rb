require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

class Menu
    def start
      puts "Hello. Welcome to Super Sports Games!"
      puts "Please enter the year for the games you want to work with:"
      @year = gets.chomp
      puts "Thank You."
      puts "What is the name of the event you wish to create?"
      @event_name = gets.chomp.capitalize
      puts "Thank You."
      players
    end

    def players
      puts "What are the ages of the players you wish to create?(Total of 5)"
      puts "Player 1"
      player_age_1 = gets.chomp.to_i
      puts "Player 2"
      player_age_2 = gets.chomp.to_i
      puts "Player 3"
      player_age_3 = gets.chomp.to_i
      puts "Player 4"
      player_age_4 = gets.chomp.to_i
      puts "Player 5"
      player_age_5 = gets.chomp.to_i
      @player_array = [player_age_1, player_age_2, player_age_3, player_age_4, player_age_5]
      puts "Thank You."
      report
    end

    def report
      event = Event.new(@event_name, @player_array)
      game = Games.new(@year)
      game.add_event(event)
      puts "#{game.event_summary(event)}"
      puts "Would you like to add another event?"
      again = gets.chomp.upcase
      if again == "YES"
        start
      else
        puts "Summery of all Games:"
        puts "#{game.summary}"
      end
    end
end
