require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Shifter
	class Application < Rails::Application
	end
end
