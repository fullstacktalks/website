require 'spec_helper'

describe "Home Page" do
  it "should have a title" do
    get "/"
    expect(response.body).to include("Full Stack Talks")
  end
end

describe "About Page" do
  it "should have a title" do
    get "about"
    expect(response.body).to include("About - Full Stack Talks")
  end
end

describe "Contact Page" do
  it "should have a title" do
    get "contact"
    expect(response.body).to include("Contact")
  end
end