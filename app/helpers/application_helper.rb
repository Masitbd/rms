module ApplicationHelper
    def config
        RestaurantConfiguration.last
      end
end
