require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CcsCrossPollBackend
  class Application < Rails::Application

    config.load_defaults 5.2

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:3000', 'https://incrisis.herokuapp.com'
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end

    config.api_only = true
  end
end
