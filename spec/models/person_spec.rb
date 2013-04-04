require 'spec_helper'

describe Person do
  it "should have a unique email address" do
    Person.create(name: 'Michael', email: 'user@example.com', password: '1234')
    Person.create(name: 'Tanner', email: 'user@example.com', password: '1234')
    Person.where(email: 'user@example.com').count.should == 1
  end
  it "fails validation with no name (using error_on)" do
    Person.new.should have(1).error_on(:name)
  end
  it "fails validation with no email (using error_on)" do
    Person.new.should have(1).error_on(:email)
  end
  it "fails validation with no password (using error_on)" do
    Person.new.should have(1).error_on(:password)
  end
  it "passes validation with a name (using :no)" do
    Person.new(:name => "liquid nitrogen").should have(:no).errors_on(:name)
  end
  it "passes validation with an email (using :no)" do
    Person.new(:email => "user@example.com").should have(:no).errors_on(:email)
  end
  it "passes validation with a password (using :no)" do
    Person.new(:password => "1234").should have(:no).errors_on(:password)
  end
end