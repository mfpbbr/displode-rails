class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  layout :app_layout
  before_filter :set_gettext_locale

  private
    def app_layout
      # @current_user and @current_user.scope ? @current_user.scope : "guest"
      "guest"
    end
end
