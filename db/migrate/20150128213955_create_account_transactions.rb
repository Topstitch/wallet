class CreateAccountTransactions < ActiveRecord::Migration
  def change
    create_table :account_transactions do |t|
      t.string :note
      t.float :debit
      t.float :credit

      t.timestamps null: false
    end
  end
end
