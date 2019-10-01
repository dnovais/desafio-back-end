class TransactionType < ApplicationRecord
  has_many :transactions

  enum kind: [:input, :output]
end
