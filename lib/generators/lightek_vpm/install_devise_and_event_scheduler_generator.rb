require 'rails/generators'
module LightekVpm
  module Generators


  # Generates the Devise setup and Event models
class InstallDeviseAndEventScheduler < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)
  def install_devise
    puts "::..Install devise..::"
    #gem 'devise'
    run 'bundle install'
    generate 'devise:install'
    puts "::..Completed..::"
    puts "::..Create user..::"
    generate 'devise', 'User'
    puts "::..Completed..::"
    run_migration
  end

  def create_nevaeh
    generate 'model Nevaeh user:references'
    run_migration
  end

  def create_event_model
    generate 'model Event title:string description:text start_time:datetime end_time:datetime user:references'
    route "resources :events"
    run_migration
    generate 'model', 'Schedule ice_cube_schedule:text event:references'
    run_migration
  end

  private
def run_migration
    puts "::..Start migration..::"
    rake 'db:migrate'
  end

end
  end
  end

