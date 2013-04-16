require "spec_helper"

describe PeopleController do
  describe "routing" do

    it "routes to #index" do
      get("/people").should route_to("people#index")
    end

    it "routes to #show" do
      get("/people/1").should route_to("people#show", :id => "1")
    end
  end
end
