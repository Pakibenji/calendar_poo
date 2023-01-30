class Event

  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date =  Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24
    @start_date + 24 *60 * 60
  end

  def end_date
    @start_date + @duration *60
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    !self.is_past?
  end

  def is_soon?
    @start_date < Time.now + 30*60
  
  end

  def to_s
    p "> Titre :" + @title
    p "> Date de début :#{@start_date}"
    p "> Durée : #{@duration}"
    p "> Invités : " + @attendees.join

  end
end

