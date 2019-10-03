FactoryBot.define do
  factory :transaction do
    transaction_type
    company
    occurence_at { Faker::Date.between(from: 10.days.ago, to: Date.today) }
    value { Faker::Number.number(digits: 5) }
    card_number { Faker::Finance.credit_card }
    cpf { Faker::CPF.numeric }
  end
end