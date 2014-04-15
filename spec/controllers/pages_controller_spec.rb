require 'spec_helper'

describe PagesController do

  describe '#index' do
    it 'returns index with status 200' do
      get :index
      expect(response.code).to eq('200')
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

end
