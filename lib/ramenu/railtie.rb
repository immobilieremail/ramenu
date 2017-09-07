module Ramenu
  class Railtie < Rails::Railtie
    initializer "ramenu.initialize" do
      ActiveSupport.on_load(:action_controller) do
        ::ActionController::Base.include Ramenu::ActionController
      end
    end
  end
end
