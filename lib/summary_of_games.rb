require './lib/games.rb'
require './lib/event.rb'

class SummaryOfGames
  def start
    puts "\n"
    puts "Enter the year for the games:"
    print "> "

    year = gets.chomp
    puts "\n"

    @games = Games.new(year)
    
    enter_event
    get_summary
  end

  def enter_event
    puts "Enter event:"
    print "> "
    
    event = gets.chomp
    puts "\n"
    
    puts "Enter ages (separated by a space):"
    print "> "
    
    ages = gets.chomp
    puts "\n"
    
    split_ages = ages.split
    
    ages_int = split_ages.map {|age| age.to_i}
    
    new_event = Event.new(event, ages_int)

    @games.events << new_event
    
    puts "Would you like to enter another event? Enter yes or no."
    print "> "
    
    enter_another_event
  end

  def enter_another_event
    yes_or_no = gets.chomp

    if yes_or_no == "yes"
      puts "\n"
      enter_event
    elsif yes_or_no == "no"
      puts "\n"
      
      @games.events.each {|event| puts event.name}
      return
    else
      puts "\n"
      puts "Invalid response. Please enter yes or no."
      print "> "
      enter_another_event
    end
  end
  
  def get_summary
    puts "\n"
    puts "Enter yes to get summary of ages, or any key to quit:"
    print "> "

    get_summary = gets.chomp
    puts "\n"
    
    if get_summary == "yes"
      p @games.summary
    else
      exit(true)
    end
  end
end