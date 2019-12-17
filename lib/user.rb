require './lib/games'
require './lib/event'

class User

  def start
    system ('clear')
    create_game
    create_event


  end

  def create_game
    print "Enter YEAR for your GAMES: "
    year = gets.chomp.to_i
    @game = Games.new(year)
    # require "pry"; binding.pry
  end

  def create_event
    print "Enter an EVENT: "
    event = gets.chomp
    print "Enter participant AGE: "
    age = gets.chomp
    event1 = Event.new(event,[age])
    @game.add_event(event1)
# require "pry"; binding.pry
  end

  def get_event_summary
  end

end
