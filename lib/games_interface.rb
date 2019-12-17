require './lib/games'
require './lib/event'

class GamesInterface
  def initialize(games)
    @games = games
  end

  def self.create_games
    print "Enter the year for the games: "
    year = gets.chomp
    GamesInterface.new(Games.new(year))
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
  end

  def enter_ages
    until (choice == "Q")
      print "Enter participant age ([Q] to quit, [D] to delete last entry): "
      choice = gets.chomp.upcase
      break if choice == 'q'
      ages.pop if choice == 'd'
      age = choice.to_i
      ages << age if age > 0
      puts "Enter valid age: " if age <= 0
      puts "Current ages: #{ages}"
    end
  end

  def summary
    puts "\n" + games.summary
  end
end
