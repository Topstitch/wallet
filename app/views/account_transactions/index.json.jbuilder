json.array!(@account_transactions) do |account_transaction|
  json.extract! account_transaction, :id, :note, :debit, :credit
  json.url account_transaction_url(account_transaction, format: :json)
end
