require 'spec_helper'

describe Talk do
  it { should validate_presence_of(:title) }

  it { should belong_to(:event) }
  it { should belong_to(:person) }
end
