class PagesController < ApplicationController
  caches_action :index, expires_in: 1.hour

  def index
    @events_results = RMeetup::Client.fetch(:events,{:group_id => "7290272"})
    @groups_results = RMeetup::Client.fetch(:groups,{:group_id => "7290272"})
    @mail_to_url = CGI.escape("mailto:talks@fullstacktalks.com?Subject=I'm%20Interested")
    @event = Event.new_from_meetup(@events_results[0]) unless @events_results[0].blank?
    @group = @groups_results[0] || OpenStruct.new(description: "")
  end

  def about
    @company = "Full Stack Talks"
  end

  def contact
  end
end