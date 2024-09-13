# app/controllers/banking_accounts_controller.rb
class BankingAccountsController < ApplicationController
  include BankingAccountControllerLogic

  def show
    @account = current_user.banking_account
  end
end
