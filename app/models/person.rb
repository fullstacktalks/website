class Person < ActiveRecord::Base
  attr_accessible :email, :name, :password, :company, :position
  validates_presence_of :email, :name, :password
  validates_uniqueness_of :email
end
