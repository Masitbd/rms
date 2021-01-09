class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :set_configurations

  
    private
   # set_configurations loads the global restaurant configurations.
  def set_configurations
    @configurations = RestaurantConfiguration.last
  end
end
