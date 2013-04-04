class Talk < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :person
  belongs_to :event

  validates_presence_of :title
end