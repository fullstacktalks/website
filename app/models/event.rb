class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :title

  has_and_belongs_to_many :people
  has_many :talks

  validates_presence_of :title, :date

  scope :future, -> { where("date >= ?", Time.now).order("date") }
end
