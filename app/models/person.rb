class Person < ActiveRecord::Base
  attr_accessible :email, :name, :password, :company, :position

  has_many :talks
  has_and_belongs_to_many :events

  validates_presence_of :email, :name, :password
  validates_uniqueness_of :email
end