# frozen_string_literal: true

require_relative "lib/lightek_vpm/version"

Gem::Specification.new do |spec|
  spec.name = "lightek_vpm"
  spec.version = LightekVpm::VERSION
  spec.authors = ["Marlon Henry"]
  spec.email = ["mrlightek@gmail.com"]

  spec.summary = "LightekVPM is a solution for managing X and Y."
  spec.description = "LightekVPM is a versatile solution that helps you manage X and Y efficiently."
  spec.homepage = "http://lighteksystems.tech"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.files = Dir["lib/**/*.rb", "lib/generators/**/*"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment and specify dependencies if needed
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "sassc-rails"
  spec.add_dependency "bootstrap", "~> 5.3.3"
  spec.add_dependency "devise"
  spec.add_dependency "cancancan"
  spec.add_dependency "actiontext"
  s.add_dependency 'ice_cube'
  s.add_dependency 'streamio-ffmpeg', '~> 3.2'
end
