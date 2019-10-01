class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :transaction_type, foreign_key: true
      t.references :company, foreign_key: true
      t.date :occurrence_at
      t.integer :value
      t.integer :card_number
      t.integer :cpf

      t.timestamps
    end
  end
end
