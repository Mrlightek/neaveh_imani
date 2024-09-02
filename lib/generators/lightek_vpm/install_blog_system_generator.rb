#install_blog_system_generator.rb
require 'rails/generators'
module LightekVpm
  module Generators
class InstallBlogSystem < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

      def create_blog_models
        generate 'model', 'Category name:string'
        run_migration
        generate 'model', 'Topic name:string category:references'
        run_migration
        generate 'model', 'Post title:string content:text topic:references'
        run_migration
      end

      def add_routes
        route <<-RUBY
          namespace :nevaeh do
            resources :categories do
              resources :topics do
                resources :posts
              end
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
