class ConfigurationsController < ApplicationController
    def index
      @configuration = RestaurantConfiguration.last
      
    end
  
    def update
      set_configuration
      if @configuration.update(configuration_params)
        flash[:notice] = 'Configurations have been successfully updated.'
        redirect_to '/configurations'
      else
        render controller: 'configurations'
      end
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_configuration
      @configuration = @configurations
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def configuration_params
      params.require(:restaurant_configuration).permit(:restaurant_name,
                                                  :restaurant_description,
                                                  :email_address,
                                                  :phone_number,
                                                  :website_url,
                                                  :address,
                                                  :city,
                                                  :state,
                                                  :zip,
                                                  :currency,
                                                  :tax_rate)
    end
  end
  