# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    manufacturer "GM"
    color "Blue"
    year 1950
    mileage 10000
    description "This is a test"
  end
end

