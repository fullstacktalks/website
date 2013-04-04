require 'spec_helper'

describe PagesController do

  describe "GET index" do
    it "returns index with status 200" do
      get :index
      response.code.should eq("200")
    end
    it "renders the index template" do
      get :index
      response.should render_template("index")
    end
    it "assigns @people" do
      get :index
      assigns(:people).should eq([])
    end
  end

  describe "GET about" do
    it "returns about with status 200" do
      get :about
      response.code.should eq("200")
    end
    it "renders the about template" do
      get :about
      response.should render_template("about")
    end
    it "assigns @company variable" do
      get :about
      assigns(:company).should eq("Full Stack Talks")
    end
  end

  describe "GET contact" do
    it "returns contact with status 200" do
      get :contact
      response.code.should eq("200")
    end
    it "renders the contact template" do
      get :contact
      response.should render_template("contact")
    end
  end

end
