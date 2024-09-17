class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!
  before_action :set_current_user
  include UserConcern

  def after_sign_in_path_for(current_user)
    # Assuming 'Dashboard' is a model and you have a show action
    dashboard_path(current_user)
  end

  def after_sign_up_path_for(current_user)
    # Assuming 'Dashboard' is a model and you have a show action
    dashboard_path(current_user)
  end
end
