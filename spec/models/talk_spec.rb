require 'spec_helper'

describe Talk do
  it "fails validation with no title" do
    Talk.new.should have(1).error_on(:title)
  end
  it "passes validation with a title" do
    Talk.new(:title => "liquid nitrogen").should have(:no).errors_on(:title)
  end
end
