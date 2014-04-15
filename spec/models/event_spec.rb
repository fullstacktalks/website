require 'spec_helper'

describe Event do
  let(:request) do
    OpenStruct.new(
      date: Time.now,
      description: 'Foo',
      event_url: 'http://example.com',
      location: OpenStruct.new(name: 'That Place')
    )
  end

  it { should validate_presence_of(:date) }

  describe '.new_from_meetup' do
    let(:event){ Event.new_from_meetup(request) }

    context 'when there are next events in meetup' do
      it 'creates an object using attributes from a request' do
        event.description.should == 'Foo'
        event.url.should == 'http://example.com'
      end
    end
  end
end
