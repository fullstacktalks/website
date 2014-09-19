class Event < ActiveRecord::Base
  validates :starts_at, :url, presence: true
end
