require 'betterroutes'
require 'rails'
module BetterRoutes
  class Railtie < Rails::Railtie
    rake_tasks do
      require 'lib/tasks/betterroutes.rake'
    end
  end
end