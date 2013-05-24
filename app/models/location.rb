class Location
  attr_accessor :name, :address, :zip, :city, :state

  def initialize( hash = {} )
    hash.each do |key, value|
      method = "#{key}="
      send(method, value) if self.respond_to?(method)
    end
  end

  def self.new_from_meetup( request )
    if request.venue
      new({
        name: request.venue.name,
        address:  request.venue.address_1,
        zip:  request.venue.zip,
        city: request.venue.city,
        state: request.venue.state
      })
    end
  end
end