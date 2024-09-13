# app/models/concerns/banking_logic.rb
module BankingLogic
  extend ActiveSupport::Concern

  included do
    validates :balance, numericality: { greater_than_or_equal_to: 0 }
  end

  def deposit(amount)
    update(balance: balance + amount)
  end

  def withdraw(amount)
    return false if balance < amount
    update(balance: balance - amount)
  end

  def pay_rent(amount)
    update(balance: balance - amount)
  end

  def collect_rent(space)
    rent = space.rent_value
    update(balance: balance + rent)
  end

  def buy_property(property)
    return false if balance < property.price
    update(balance: balance - property.price)
    property.update(owner: self)
  end
end
