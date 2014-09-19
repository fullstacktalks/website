class Meeting < ActiveRecord::Base
  validates :starts_at, :url, presence: true
end
