class PagesController < ApplicationController
  def index
    @results = RMeetup::Client.fetch(:events,{:group_id => "7290272", :zip => "92009"})
    @mail_to_url = CGI.escape("mailto:talks@fullstacktalks.com?Subject=I'm%20Interested")
    @event = Event.new_from_meetup(@results[0])
  end

  def about
    @company = "Full Stack Talks"
  end

  def contact
  end
end