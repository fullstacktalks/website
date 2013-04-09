# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "User"
    email "user@example.com"
    password "123456789"
    company "Company"
    position "Position"
  end
end
