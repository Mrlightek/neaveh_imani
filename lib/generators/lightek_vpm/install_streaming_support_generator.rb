#install_streaming_support_generator.rb
require 'rails/generators'
module LightekVpm
  module Generators
    class InstallStreamingSupport < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
      
  def create_media_models
    generate 'model Media title:string description:text media_type:string url:string user:references'
    route "resources :media"
  end

      def create_media_models
        generate 'model', 'Media title:string description:text file:string user:references'
        generate 'model', 'Stream media:references status:string'
        rake 'db:migrate'
      end

      def add_routes
        route <<-RUBY
          namespace :nevaeh do
            resources :media do
              resources :streams
            end
          end
        RUBY
      end

       private
def run_migration
    puts "::..Start migration..::"
    rake 'db:migrate'
  end
end 
end
  end
