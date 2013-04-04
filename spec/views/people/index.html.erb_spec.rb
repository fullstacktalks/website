require 'spec_helper'

describe "people/index" do
  before(:each) { assign(:people, [build_stubbed(:person), build_stubbed(:person)]) }

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "1234".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "user@example.com".to_s, :count => 2
  end
end
