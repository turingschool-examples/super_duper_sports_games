class Games
  attr_reader :events,
              :year

  def initialize(year)
    @year = year
    @events = []
  end

  def add_event(event)
    @events << event
  end

  def summary
    headers + "\n" + all_events_summary
  end

  def headers
    "Event".ljust(15) +
    "Max Age".ljust(20) +
    "Min Age".ljust(20) +
    "Average Age".ljust(20) +
    "StdDev Age"
  end

  def event_summary(event)
    event.name.ljust(15) +
    event.max_age.to_s.ljust(20) +
    event.min_age.to_s.ljust(20) +
    event.average_age.to_s.ljust(20) +
    event.standard_deviation_age.to_s
  end

  def all_events_summary
    @events.map do |event|
      event_summary(event)
    end.join("\n")
  end

  def start
    puts "Welcome! Please enter a year for the games".

    user_answer = gets.chomp
        puts "The year is {#{user_answer}}. Let the games begin!"
        start
      end
  end
