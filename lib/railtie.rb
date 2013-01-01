require 'rails'

module BetterRoutes
  class Railtie < Rails::Railtie

    rake_tasks do
      load File.join(File.dirname(__FILE__),'tasks/betterroutes.rake')
    end

  end
end