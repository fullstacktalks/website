class Job < ActiveRecord::Base
  EMPLOYMENT = ['Full Time', 'Part Time', 'Freelance', 'Contract']

  attr_accessible :title, :description, :company, :url

  validates_presence_of :title, :description
end
