class PagesController < ApplicationController
  caches_action :index, expires_in: 1.hour

  def index
    @results = RMeetup::Client.fetch(:events,{:group_id => "7290272"})
    @mail_to_url = CGI.escape("mailto:talks@fullstacktalks.com?Subject=I'm%20Interested")
    @event = Event.new_from_meetup(@results[0]) unless @results[0].blank?
  end

  def about
    @company = "Full Stack Talks"
  end

  def contact
  end
end