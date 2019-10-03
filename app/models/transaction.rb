class Transaction < ApplicationRecord
  belongs_to :transaction_type
  belongs_to :company
  validates :transaction_type_id, :company_id, :occurrence_at, :value, :card_number, :cpf, presence: :true
  validates :value, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
