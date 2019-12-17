require_relative './games'
require_relative './event'

class Interaction

  def initialize
    @game = nil
    @input = nil
    @events = []
  end

  def game_initialization
    puts "Welcome to the games"
    puts "Please enter the year of the games"
    input = gets.chomp
    while input.to_i == 0 
      puts "Please enter the year of the games" 
      input = gets.chomp
    end
    @game = Games.new(input)
  end

  def menu_input
    inputs = ['e', 'q', 's']
    puts "Please press 'e' to enter an event 's' to see a summary or 'q' to quit"
    input = gets.chomp
    while !inputs.include?(input) 
      puts "Please press 'e' to enter an event 's' to see a summary or 'q' to quit"
      input = gets.chomp
    end
    return 'exit' if input == 'q'
    input == 'e' ? create_event : show_summary
  end

  def create_event
    input = get_info_event
    @game.add_event(Event.new(input[0], input[1]))
  end

  def get_info_event
    puts 'Please enter the name of the event'
    name = gets.chomp
    puts 'Please enter the age of the participants separated by commas'
    ages_as_strings = gets.chomp.split(',')
    ages = ages_as_strings.map {|age| age.to_i} 
    [name, ages]
  end

  def show_summary
    puts @game.headers
    puts @game.all_events_summary
  end

end