class PagesController < ApplicationController
  def index
    @people = Person.all
    @next_event = Event.where("date >= '#{Time.now}'").order("date").first
  end
  def about
    @company = "Full Stack Talks"
  end
  def contact
  end
end
