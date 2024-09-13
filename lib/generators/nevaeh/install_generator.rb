require 'rails/generators' 
module Nevaeh 
	module Generators 
		class InstallGenerator < Rails::Generators::Base
	# Specify the source directory for templates
      source_root File.expand_path("templates", __dir__)

def lay_out_structure
	# User Model with Devise for Authentication (if you need
	# authentication) rails generate devise User

	puts "::..Let us start with the structure we need..::"
	
	puts "::..To scaffold the majority of the app, use the
	following generators:..::" 
	
	generate "devise", "User first_name:string last_name:string 
	phone:string age:integer city:string state:string"

	run_migration
	

# Promotions resource
say_that_shit("Promotions resource")
generate "scaffold", "Promotion user:references details:text
status:string"
run_migration

# Votes resource
say_that_shit("Votes resource")
generate "scaffold", "Vote user:references promotion:references
vote:boolean"
run_migration

# Banking Account resource
say_that_shit("Banking Account resource")
generate "scaffold", "BankingAccount user:references
balance:decimal"
run_migration

# Notifications and Events resource
say_that_shit("Notifications and Events resource")
generate "scaffold", "Notification user:references message:text"
generate "scaffold", "Event user:references description:text"
run_migration

# Game and Players for the mini-game
say_that_shit("Game and Players for the mini-game")
generate, "scaffold", "Game"
run_migration
say_that_shit("Game and Players for the mini-game")
 generate "scaffold", "Player
game:references user:references"
run_migration

end 

def create_files_from_templates
	# Define the mapping of template files to their target paths
    file_mapping = {
      "models/promotion.rb" => "app/models/promotion.rb",
      "models/concerns/promotion_logic.rb" => "app/models/concerns/promotion_logic.rb",
      "models/vote.rb" => "app/models/vote.rb"
      "models/concerns/voting_logic.rb" => "app/models/concerns/voting_logic.rb",
      "models/banking_account.rb" => "",
      "models/concerns/banking_logic.rb" => "app/models/concerns/banking_logic.rb",
      "models/game.rb" => "app/models/game.rb",
      "models/concerns/game_logic.rb" => "app/models/concerns/game_logic.rb",
      "models/player.rb" => "app/models/player.rb",

      #Notification and Event Models
      "models/notification.rb" => "app/models/notification.rb",
      "models/concerns/notification_logic.rb" => "app/models/concerns/notification_logic.rb",
      "models/event.rb" => "app/models/event.rb",
      "models/concerns/event_logic.rb" => "app/models/concerns/event_logic.rb",
      
      #Promotions Controller
      "controllers/promotions_controller.rb" => "app/controllers/promotions_controller.rb",
      "controllers/concerns/promotion_controller_logic.rb" => "app/controllers/concerns/promotion_controller_logic.rb",

      #Votes Controller
      "controllers/votes_controller.rb" => "app/controllers/votes_controller.rb",
      "controllers/concerns/vote_controller_logic.rb" => "app/controllers/concerns/vote_controller_logic.rb",

      #BankingAccounts Controller
      "controllers/banking_accounts_controller.rb" => "app/controllers/banking_accounts_controller.rb",
	"controllers/concerns/banking_account_controller_logic.rb" => "app/controllers/concerns/banking_account_controller_logic.rb",

	#Games Controller
	"controllers/games_controller.rb" => "app/controllers/games_controller.rb",
	"controllers/concerns/game_controller_logic.rb" => "app/controllers/concerns/game_controller_logic.rb",
	"models/game_space.rb" => "app/models/game_space.rb",
	"models/concerns/game_space_logic.rb" => "app/models/concerns/game_space_logic.rb"

	#Character Model
	"models/chararacter.rb" => "app/models/chararacter.rb",
	"models/concerns/chararacter_logic.rb" => "app/models/concerns/chararacter_logic.rb",


	#Game Cards: Kimoyo Bead, Heart-Shaped Herb, etc.
	#Cards can be designed as another model, representing the items or bonuses players can receive during gameplay.
	#Game Card Model
	"models/game_card.rb" => "app/models/game_card.rb",
	"models/concerns/game_card_logic.rb" => "app/models/concerns/game_card_logic.rb",

	#Player Actions
	"models/concerns/player_logic.rb" => "app/models/concerns/player_logic.rb",

	#Game View Modifications
	"views/games/show.html.erb" => "app/views/games/show.html.erb",

	#GameSpace
	"migrate/202409130001_create_game_spaces.rb" => "app/db/migrate/202409130001_create_game_spaces.rb",
	"migrate/202409130002_create_characters.rb" => "app/db/migrate/202409130002_create_characters.rb",



    }

  file_mapping.each do |template_file, target_path|
    template template_file, target_path
  end

  run_migration
end


private
def say_that_shit(statement)
	puts statement
end

def run_migration
say_that_shit("::..Running migration..::")	
end

end 
end 
end