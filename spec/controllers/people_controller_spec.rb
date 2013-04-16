require 'spec_helper'

describe PeopleController do

  def valid_attributes
    {
      "name" => "Chan",
      "email" => "user@email.com",
      "password" => "123456789",
      "company" => "ACME",
      "position" => "party planner"
     }
  end

  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all people as @people" do
      person = Person.create! valid_attributes
      get :index, {}, valid_session
      assigns(:people).should eq([person])
    end
  end

  describe "GET show" do
    it "assigns the requested person as @person" do
      person = Person.create! valid_attributes
      get :show, {:id => person.to_param}, valid_session
      assigns(:person).should eq(person)
    end
  end
end
