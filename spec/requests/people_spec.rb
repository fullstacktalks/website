require 'spec_helper'

describe "People" do
  describe "GET /people" do
    it "works!" do
      get people_path
      response.status.should be(200)
    end
  end

  describe "GET /people/sign_up" do
    it "load sign up page" do
      get new_person_registration_path
      response.status.should be(200)
    end
  end
end
