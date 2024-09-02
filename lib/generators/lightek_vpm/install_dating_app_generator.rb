#install_dating_app_generator.rb
class InstallDatingApp < Rails::Generators::Base
  def create_dating_app_models
    generate 'model Profile user:references bio:text age:integer gender:string interests:text'
    generate 'model Match user_one:references user_two:references status:string'
    generate 'model Like user:references liked_user:references'
    route "resources :profiles do resources :matches, :likes end"
  end
end
