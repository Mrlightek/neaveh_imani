# app/controllers/concerns/banking_account_controller_logic.rb
module BankingAccountControllerLogic
  extend ActiveSupport::Concern

  def deposit
    @account = current_user.banking_account
    amount = params[:amount].to_f
    if @account.deposit(amount)
      redirect_to banking_account_path, notice: 'Deposit successful.'
    else
      redirect_to banking_account_path, alert: 'Invalid amount.'
    end
  end

  def withdraw
    @account = current_user.banking_account
    amount = params[:amount].to_f
    if @account.withdraw(amount)
      redirect_to banking_account_path, notice: 'Withdrawal successful.'
    else
      redirect_to banking_account_path, alert: 'Insufficient funds.'
    end
  end
end
