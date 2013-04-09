require "spec_helper"

describe EventsController do
  describe "routing" do

    it "routes to #index" do
      get("/events").should route_to("events#index")
    end

    it "routes to #new" do
      get("/events/new").should route_to("events#new")
    end

    it "routes to #show" do
      get("/events/1").should route_to("events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/events/1/edit").should route_to("events#edit", :id => "1")
    end

    it "routes to #create" do
      post("/events").should route_to("events#create")
    end

    it "routes to #update" do
      put("/events/1").should route_to("events#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/events/1").should route_to("events#destroy", :id => "1")
    end

  end

  describe "nested talk routing" do

    it "routes to talks#index" do
      get("/events/1/talks").should route_to("talks#index", :event_id => "1")
    end

    it "routes to talks#new" do
      get("/events/1/talks/new").should route_to("talks#new", :event_id => "1")
    end

    it "routes to talks#show" do
      get("/events/1/talks/1").should route_to("talks#show", :event_id => "1", :id => "1")
    end

    it "routes to talks#edit" do
      get("/events/1/talks/1/edit").should route_to("talks#edit", :event_id => "1", :id => "1")
    end

    it "routes to talks#create" do
      post("/events/1/talks").should route_to("talks#create", :event_id => "1")
    end

    it "routes to talks#update" do
      put("/events/1/talks/1").should route_to("talks#update", :event_id => "1", :id => "1")
    end

    it "routes to talks#destroy" do
      delete("/events/1/talks/1").should route_to("talks#destroy" , :event_id => "1", :id => "1")
    end

  end
end
