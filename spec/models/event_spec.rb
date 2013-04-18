require 'spec_helper'

describe Event do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:date) }

  it { should have_many(:talks) }
  it { should have_and_belong_to_many(:people) }

  describe '.new_from_meetup' do
    it 'creates an object using attributes from a request' do
      request = OpenStruct.new(description: 'Foo', event_url: 'http://example.com')
      event = Event.new_from_meetup(request)
      event.description.should == 'Foo'
      event.url.should == 'http://example.com'
    end
  end
end
