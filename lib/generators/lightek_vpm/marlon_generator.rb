require "thor"

module LightekVpm
  module Generators
    class MarlonGenerator < Thor::Group
      include Thor::Actions

      def print_message
        say "Marlon first gem"
      end
    end
  end
end
