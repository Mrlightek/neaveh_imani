# app/models/banking_account.rb
class BankingAccount < ApplicationRecord
  belongs_to :user

  include BankingLogic
end
