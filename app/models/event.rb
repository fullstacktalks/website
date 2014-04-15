class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :title, :url
  attr_accessor :url

  validates_presence_of :date

  scope :future, -> { where("date >= ?", Time.now).order("date") }

  def self.new_from_meetup( request )
    new({
      date: request.time,
      description: request.description,
      url: request.event_url,
      location: Location.new_from_meetup(request)
    })
  end
end
