# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :talk do
    title "Talk Title"
    description "Talk Description"
    event
  end
end
