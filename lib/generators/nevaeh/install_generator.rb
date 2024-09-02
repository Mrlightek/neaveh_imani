require 'rails/generators'
module Nevaeh
module Generators 
class InstallGenerator < Rails::Generators::Base

def test_this
	puts "I am running an install"
end

def something_to_run_after
	puts "I am doing this because I think I want this in my development updates to run after I drop tables and shit"
end
end 
end