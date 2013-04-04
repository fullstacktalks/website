require 'spec_helper'

describe "people/new" do
  before (:each) { @person = build(:person) }

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_password[name=?]", "person[password]"
      assert_select "input#person_company[name=?]", "person[company]"
      assert_select "input#person_position[name=?]", "person[position]"
    end
  end
end
