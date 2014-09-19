class PagesController < ApplicationController
  def index
    @page = PagesIndexPresenter.new
  end
end
