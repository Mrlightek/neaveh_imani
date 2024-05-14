require 'rails/generators'

module LightekVpm
  module Generators
    class InitGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc "Adding the gems and models needed for base work"

      def add_gems_needed
        #Run Can Can installation
        rails g cancan:ability
        
        # Run Devise installation
        generate 'devise:install'

        # Create Devise User model
        generate 'devise User role:integer first_name:string last_name:string bio:text website:string twitter:string facebook:string instagram:string dob:date street:string city:string state:string'
        
        # Run database migration
        rake 'db:migrate'

        # Run CanCanCan installation (if needed)
        # Run Action Text installation
        generate 'action_text:install'

        # Run database migration
        rake 'db:migrate'
      end
    end
  end
end
