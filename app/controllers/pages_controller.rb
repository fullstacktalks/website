class PagesController < ApplicationController
  def index
    RMeetup::Client.api_key = ENV['MEETUP_API_KEY']
    results = RMeetup::Client.fetch(:events,{:zip => "ZIP_CODE"})
    results.each do |result|
      # Do something with the result
    end
end

  def about
    @company = "Full Stack Talks"
  end

  def contact
  end
end
