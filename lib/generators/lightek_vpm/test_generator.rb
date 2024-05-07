require "thor"
module LightekVpm
	class TestGenerator < Thor::Group
		include Thor::Actions

		def test
			say "Testing this out to see if I got it right"
			
		end
	end
end