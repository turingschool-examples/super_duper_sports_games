require './lib/games'
require './lib/event'

class GamesInterface
  def initialize
    year = enter_year
    @games = Games.new(year)
  end

  def enter_year
    print "Enter the year for the games: "
    year = gets.chomp
    until numbers_only?(year)
      print "#{year} is not valid. Try again (numbers only): "
      year = gets.chomp
    end
    year
  end

  def main_menu
    choice = nil
    until choice == "Q"
      print_dashed_line
      puts ">[A]dd event      >[S]ummary      >[Q]uit"
      choice = gets.chomp.upcase
      add_event if choice == "A"
      summary if choice == "S"
    end
  end

  def print_dashed_line
    print "------------------------------------------"
    puts "-------------------------------------------"
  end

  def add_event
    print_dashed_line
    name = enter_name
    ages = enter_ages
    @games.add_event(Event.new(name, ages))
  end

  def enter_name
    print "Enter name of event: "
    event_name = gets.chomp
    if event_name.length > 13
      event_name = event_name[0,11].strip + "..."
    end
    event_name
  end

  def enter_ages
    ages = []
    puts "Enter participant ages, separated by spaces..."
    ages = gets.chomp.split
    until numbers_only?(ages.join)
      puts "Enter valid ages..."
      ages = gets.chomp.split
    end
    ages.map { |age| age.to_i }
  end

  def numbers_only?(numbers)
    numbers.delete("0-9").length == 0
  end

  def summary
    print_dashed_line
    puts @games.summary
  end
end
