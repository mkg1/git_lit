class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :payee
      t.decimal :amount
      t.datetime :paid_at
      t.integer :account_number

      t.timestamps null: false
    end
  end
end
