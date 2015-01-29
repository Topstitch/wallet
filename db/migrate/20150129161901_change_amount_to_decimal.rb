class ChangeAmountToDecimal < ActiveRecord::Migration
  def change
    change_column :account_transactions, :credit, :decimal, precision: 8, scale: 2
    change_column :account_transactions, :debit, :decimal, precision: 8, scale: 2
  end
end
