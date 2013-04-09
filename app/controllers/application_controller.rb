class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_data

  def load_data
  end
end
