class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :title

  validates_presence_of :title, :date
end
