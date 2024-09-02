#install_ecommerce_generator.rb
class InstallECommerce < Rails::Generators::Base
  def create_ecommerce_models
    generate 'model Product name:string description:text price:decimal stock:integer'
    generate 'model Order user:references total:decimal status:string'
    generate 'model Transaction order:references transaction_type:string transaction_status:string'
    route "resources :products, :orders, :transactions"
  end

  def integrate_stripe
    # Add Stripe or Plaid setup logic here
  end
end
