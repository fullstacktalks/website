class PagesController < ApplicationController
  def index
    @people = Person.all
    @next_event = Event.includes(:talks).where("date >= ?", Time.now).order("date").first
    @next_event_talks = @next_event.talks if @next_event.present?
    @next_event_talks ||= []
  end
  def about
    @company = "Full Stack Talks"
  end
  def contact
  end
end
