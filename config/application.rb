require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Note: this doesn't require the gems
# You should require when needed
Bundler.setup(:default, Rails.env)

# require railties and engines here.
require_relative "../lib/boot_inquirer"
require 'shared'

BootInquirer.each_active_app do |app|
  require app.gem_name
end

module RailsEnginesExample
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :en
  end
end
