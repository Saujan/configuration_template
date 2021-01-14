require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#dotenv is initialized in your Rails app during the before_configuration callback, which is fired when the Application constant is defined in config/application.rb with class Application < Rails::Application. If you need it to be initialized sooner, you can manually call Dotenv::Railtie.load.
Dotenv::Railtie.load
puts ENV['APP_ENV']

module Ministore
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
