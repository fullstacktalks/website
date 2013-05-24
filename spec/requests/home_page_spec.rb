require 'spec_helper'

describe 'Home Page' do

  # it 'should have a title' do
  #   get '/'
  #   expect(response.body).to include('FullStackTalks')
  # end

  context 'with no upcoming events' do
    it 'displays fallback message' do
      RMeetup::Client.should_receive(:fetch).and_return([])
      RMeetup::Client.should_receive(:fetch).and_return([])
      get '/'
      expect(response.body).to include('No upcoming events')
    end
  end

  context 'with upcoming event available' do
    it 'displays the upcoming event' do
      get '/'
      expect(response.body).to include('Planning Center Online Offices')
    end
  end

  # context 'when there are no people' do
  #   it 'should present an add people message' do
  #     get '/'
  #     expect(response.body).to include('Add some peeps!')
  #   end
  # end

  # context 'when people exist' do
  #   before(:each) do
  #     create(:person, name: 'Tanner', email: 'tanner@pco.com')
  #     create(:person, name: 'Michael', email: 'michael@pco.com')
  #   end

  #   it 'should have people list' do
  #     get '/'
  #     expect(response.body).to include('Tanner')
  #     expect(response.body).to include('Michael')
  #   end
  # end

  # context 'when a next event exists' do
  #   let!(:event) { create(:event, title: 'Hello World', date: Date.tomorrow) }

    # it 'should have next event object' do
    #   get '/'
    #   expect(response.body).to include('Hello World')
    # end

    # context 'when there are no upcoming talks' do
    #   it 'should present no upcoming talks message' do
    #     get '/'
    #     expect(response.body).to include('No more talks!')
    #   end
    # end

  #   context 'when there are upcoming talks' do
  #     let!(:talk) { create(:talk, event: event) }

  #     it 'should have talk list' do
  #       get '/'
  #       expect(response.body).to include("Talk Title")
  #     end
  #   end
  # end

  # context 'when a next event does not exists' do
  #   it 'should present no upcoming events message' do
  #     get '/'
  #     expect(response.body).to include('No more events!')
  #   end
  # end

end