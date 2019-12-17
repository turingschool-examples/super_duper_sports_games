require_relative 'games.rb'
require_relative 'event.rb'
require 'pry'


def second
	end_loop = false
	while end_loop == false
		puts "What would you like to do?"
		puts "1. New Event"
		puts "2. Get Summary of the Events?"
		answer = gets.chomp
		if answer == "1"
			return answer
			end_loop = true
		elsif answer == "2"
			return answer
			end_loop = true
		else
			puts "Need a 1 or 2"
		end
	end
end

def first
	puts "Enter a year for the games"
	year = gets.chomp.to_i
	if year == 0
		puts "Not a number, i quit"
		exit(1)
	end
	@game = Games.new(year)
end

def quit?
	game_ender = false
	while game_ender == false	
		puts "Do you want to quit?"
		puts "y = Yes, n = No"
		answer = gets.chomp
		if answer == "y"
			return 1
			game_ender = true
		elsif answer == "n"
			return 0
			game_ender = true
		else
			puts "invalid input, try again"
		end
	end
end

first
ender = false
while ender == false
	if second == "1"
		puts "What is the game name?"
		name = gets.chomp
		puts "What are the player ages?"
		ages = gets.chomp.split
		ages_in_i = ages.map { |age| age.to_i}
		binding.pry
		event = Event.new(name, ages_in_i)
		@game.add_event(event)
	else
		puts @game.summary
	end
	if quit? == 1
		exit(0)
	end
end				
