class PagesController < ApplicationController
  def index
    @people = Person.all
  end
  def about
    @company = "Full Stack Talks"
  end
  def contact
  end
end
