class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :title

  has_and_belongs_to_many :people

  validates_presence_of :title, :date
end
