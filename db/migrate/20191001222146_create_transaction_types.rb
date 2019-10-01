class CreateTransactionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_types do |t|
      t.string :description
      t.integer :kind
      t.string :sign

      t.timestamps
    end
  end
end
