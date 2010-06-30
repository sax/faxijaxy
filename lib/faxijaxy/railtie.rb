require 'faxijaxy'

module FaxiJaxy
  class Railtie < Rails::Railtie
    config.to_prepare do
      ActionController::Base.send(:after_filter, :faxijaxify)
    end
  end
end