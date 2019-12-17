require './lib/games'
require './lib/standard_dev'
require './lib/event'
require 'pry'

class UserInput
  def initialize
    @game_years = []
  end

  def main_menu
    puts "*** Welcome to the Event Interface  ***".center(80)
    puts "\n\n Enter q for quit (at any time) or enter the year for the games"
    game_year_input = gets.chomp.downcase
      if game_year_input == "q"
        exit
      end
    puts "\n\n\n Thank you. #{game_year_input} \n".center(100)
    puts "If you would like to display a summary of events, press 's'.\n"
    puts "To quit now or at any time, press 'q'."
    menu_option_input = gets.chomp.downcase
      if menu_option_input == "q"
        exit
      elsif menu_option_input == "s"
        display_summary
      # elsif menu_option_input == "n"
      #
      end
  end

  def display_summary(game_year_input)

  end
end

# * Create a program that allows a User to interact with the Games through the command line
#   * Upon starting the program, the User should enter the year for the games
#   * The User can then create new Events and get a Summary of the Events
# puts "If you would like to create a new event press 'n'. \n"
