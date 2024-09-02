# frozen_string_literal: true

require_relative "lightek_vpm/version"
require "generators/lightek_vpm/controller_generator"
require "generators/lightek_vpm/init_generator"
require "generators/lightek_vpm/install_devise_and_event_scheduler_generator"
require "generators/lightek_vpm/install_bug_tracker_generator"
require "generators/lightek_vpm/install_blog_system_generator"
require "generators/lightek_vpm/install_streaming_support_generator"
require "generators/lightek_vpm/install_messaging_system_generator"
require "generators/lightek_vpm/install_dating_app_generator"
require "generators/lightek_vpm/install_ecommerce_generator"
require "generators/lightek_vpm/install_therapy_app_generator"
require "generators/lightek_vpm/install_resume_builder_generator"

module LightekVpm
  class Error < StandardError; end
  # Your code goes here...
end
