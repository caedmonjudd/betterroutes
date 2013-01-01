require 'betterroutes'
require 'rails'

module BetterRoutes
  class Railtie < Rails::Railtie
    railtie_name :betterroutes

    rake_tasks do
      Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].each { |f| load f }
      puts f
    end
  end
end