require 'betterroutes'
require 'rails'

module BetterRoutes
  class Railtie < Rails::Railtie
    railtie_name :betterroutes

    rake_tasks do
      require 'tasks/betterroutes.rake'
    end
  end
end