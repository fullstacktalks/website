class Location
  attr_accessor :name, :address, :zip, :city, :state

  def initialize( hash = {} )
    hash.each do |key, value|
      method = "#{key}="
      send(method, value) if self.respond_to?(method)
    end
  end

  def self.new_from_meetup( request )
    new({
      name: request.venue_name,
      address:  request.venue_address1,
      zip:  request.venue_zip,
      city: request.venue_city,
      state: request.venue_state
    })
  end
end