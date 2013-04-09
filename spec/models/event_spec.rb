require 'spec_helper'

describe Event do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:date) }

  it { should have_many(:talks) }
  it { should have_and_belong_to_many(:people) }
end
