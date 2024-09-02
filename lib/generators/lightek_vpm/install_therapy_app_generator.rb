#install_therapy_app_generator.rb
class InstallTherapyApp < Rails::Generators::Base
  def create_therapy_models
    generate 'model Therapist name:string specialization:string'
    generate 'model Patient name:string age:integer'
    generate 'model Session therapist:references patient:references start_time:datetime end_time:datetime'
    route "resources :therapists, :patients, :sessions"
  end
end
