require 'rails/generators'
module LightekVpm
  module Generators
class InstallBugTracker < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)
  
  def create_bug_models
        generate 'model', 'Bug title:string description:text status:string user:references'
        run_migration
        generate 'model', 'Issue bug:references description:text user:references'
        run_migration
        generate 'model', 'Comment issue:references content:text user:references'
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
