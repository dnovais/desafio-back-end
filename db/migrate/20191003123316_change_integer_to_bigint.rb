class ChangeIntegerToBigint < ActiveRecord::Migration[5.2]
  def change
    change_column :transactions, :value, :bigint
    change_column :transactions, :card_number, :bigint
    change_column :transactions, :cpf, :bigint
  end
end
