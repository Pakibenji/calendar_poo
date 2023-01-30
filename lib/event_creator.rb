class Event_creator

  attr_accessor :start_date, :duration, :title, :attendees
    def initialize
    @start_date
    @duration 
    @title 
    @attendees 
    end

    def create_event
    puts "Bonjour, donne moi le nom de l'event"
    @title = gets.chomp.to_s
    puts "A quelle date commence ton event?"
    @start_date = gets.chomp.to_s
    puts "Combien de temps dure ton event?"
    @duration = gets.chomp.to_i
    puts "Qui participe?"
    @attendees = gets.chomp

    event = Event.new(start_date, duration, title, attendees)
    end

end