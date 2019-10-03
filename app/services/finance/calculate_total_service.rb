module Finance
  class CalculateTotalService < ApplicationService
    def initialize(transactions)
      @transactions = transactions
    end

    def call
      calculate_transactions
    end

    private

    def calculate_transactions
      total = 0
      @transactions.each do |transaction|
        if transaction.transaction_type.sign == "+"
          total += transaction.value
        else
          total -= transaction.value
        end
      end
      total
    end
  end
end