$:.push "rails/activesupport/lib"
$:.push "rails/actionpack/lib"

require 'action_controller'
require 'faxijaxy'
config.to_prepare do
  ActionController::Base.send(:include, FaxiJaxi)
end