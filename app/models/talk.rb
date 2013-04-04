class Talk < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :person
  belongs_to :event
end
