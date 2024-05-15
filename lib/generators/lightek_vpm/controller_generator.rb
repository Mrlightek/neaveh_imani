require 'rails/generators'
require 'generators/lightek_vpm/generator_helpers'

module LightekVpm
  module Generators
    # Custom scaffolding generator
    class ControllerGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      include Rails::Generators::ResourceHelpers
      class_option :skip_show, type: :boolean, default: false, desc: 'Skip "show" action'

      desc 'Generates controller, controller_spec and views for the model with the given NAME.'

      def copy_controller_and_spec_files
        template 'controller.rb', File.join('app/controllers', "#{controller_file_name}_controller.rb")
      end

      def copy_view_files
        directory_path = File.join('app/views', controller_file_path)
        empty_directory directory_path

        view_files.each do |file_name|
          template "views/#{file_name}.html.erb", File.join(directory_path, "#{file_name}.html.erb")
        end
      end

      def add_routes
        routes_string = "resources :#{singular_name}"
        routes_string += ', except: :show' unless show_action?
        route routes_string
      end

      def add_abilities
        ability_string = "n    can :manage, #{class_name}, user_id: user.id"
        inject_into_file "#{Rails.root}/app/models/ability.rb", ability_string, after: /def initialize[a-z()]+/i
      end

      private

      def show_action?
        !options['skip_show']
      end
    end
  end
end
