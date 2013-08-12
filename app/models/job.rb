class Job < ActiveRecord::Base
  default_scope { order("created_at DESC") }

  EMPLOYMENT = ['Full Time', 'Part Time', 'Freelance', 'Contract']

  attr_accessible :title, :description, :company, :url, :position_type

  validates_presence_of :title, :description, :company, :url, :position_type

end
