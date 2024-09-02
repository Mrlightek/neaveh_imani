#install_messaging_system_generator.rb
class InstallMessagingSystem < Rails::Generators::Base
  def create_messaging_models
    generate 'model Conversation user_one:references user_two:references'
    generate 'model Message content:text conversation:references user:references'
    route "resources :conversations do resources :messages end"
  end
end
