class Talk < ActiveRecord::Base
  attr_accessible :description, :title, :event_id

  belongs_to :person
  belongs_to :event

  validates_presence_of :title
  validates_presence_of :event
end