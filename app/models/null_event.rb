class NullEvent
  attr_reader :starts_at, :url

  def initialize(attributes = {})
    attributes.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def description
    @description || 'No events scheduled. Please check back soon.'
  end

  def to_partial_path
    'events/null_event'
  end
end
