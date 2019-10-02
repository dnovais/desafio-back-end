FactoryBot.define do
  factory :transaction_type do
    description { Faker::Lorem.word }
    kind { %i[output input].sample }
    sign { ["+", "-"].sample }
  end
end