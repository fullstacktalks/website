class Job < ActiveRecord::Base

  default_scope { order("created_at DESC") }

  EMPLOYMENT = ['Full Time', 'Part Time', 'Freelance', 'Contract']

  attr_accessible :title, :description, :company, :url, :position_type, :company_logo
  has_attached_file :company_logo, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"

  validates_presence_of :title, :description, :company, :url, :position_type

end
