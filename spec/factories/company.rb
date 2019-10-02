FactoryBot.define do
  factory :company do
    name { Faker::Company.name }
    owner_name { Faker::Name.name }
  end
end