require 'spec_helper'

describe 'Home Page' do

  it 'should have a title' do
    get '/'
    expect(response.body).to include('Full Stack Talks')
  end

  context 'when there are no people' do
    it 'should present an add people message' do
      get '/'
      expect(response.body).to include('Add some peeps!')
    end
  end

  context 'when people exist' do
    before(:each) do
      create(:person, name: 'Tanner', email: 'tanner@pco.com')
      create(:person, name: 'Michael', email: 'michael@pco.com')
    end

    it 'should have people list' do
      get '/'
      expect(response.body).to include('Tanner')
      expect(response.body).to include('Michael')
    end
  end

  context 'when a next event exists' do
    before(:each) do
      create(:event, title: 'Hello World', date: Date.tomorrow)
    end

    it 'should have next event object' do
      get '/'
      expect(response.body).to include('Hello World')
    end
  end

  context 'when a next event does not exists' do
    it 'should present no upcoming events message' do
      get '/'
      expect(response.body).to include('No more events!')
    end
  end

end