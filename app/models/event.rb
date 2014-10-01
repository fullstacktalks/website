class Event < ActiveRecord::Base
  validates :starts_at, :url, presence: true

  def self.next
    where('starts_at > ?', Time.now).order('starts_at ASC').first
  end

  def self.past
    where('starts_at < ?', Time.now).order('starts_at DESC')
  end

  def future?
    !past?
  end

  def past?
    starts_at < Time.now
  end
end
