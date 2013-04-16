class PeopleController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    @people = Person.only_public_fields

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.only_public_fields.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end
end
