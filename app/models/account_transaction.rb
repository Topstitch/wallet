class AccountTransaction < ActiveRecord::Base
  validates :debit, presence: true, unless: -> (accounttransaction) {accounttransaction.credit.present?}
  validates :debit, numericality: true, allow_nil: true
  validates :credit, presence: true, unless: -> (accounttransaction) {accounttransaction.debit.present?}
  validates :credit, numericality: true, allow_nil: true
  validates :note, presence: true
end
