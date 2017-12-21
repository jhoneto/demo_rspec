FactoryGirl.define do
  factory :student do
    email { Faker::Internet.email }
    name  {Faker::Name.name }
    register {Faker::Number.number(10)}
  end
end
