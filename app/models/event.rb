class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :title, :url
  attr_accessor :url

  has_and_belongs_to_many :people
  has_many :talks

  validates_presence_of :date

  scope :future, -> { where("date >= ?", Time.now).order("date") }

  def self.new_from_meetup( request )
    new({
      date: request.time,
      description: ActionView::Base.full_sanitizer.sanitize(request.description),
      url: request.event_url,
      location: Location.new_from_meetup(request)
    })
  end
end
