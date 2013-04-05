# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    location "MyString"
    date Date.tomorrow
    description "MyString"
  end
end
