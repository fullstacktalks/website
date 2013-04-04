require 'spec_helper'

describe "About Page" do
  it "should have a title" do
    get "about"
    expect(response.body).to include("About &mdash; Full Stack Talks")

  end
end

describe "Contact Page" do
  it "should have a title" do
    get "contact"
    expect(response.body).to include("Contact")
  end
end