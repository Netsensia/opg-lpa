require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_model"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require 'active_resource'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module OpgLpa
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # app title appears in the header bar
    config.app_title = 'Lasting Power of Attorney'
    # phase governs text indicators and highlight colours
    # presumed values: alpha, beta, live
    config.phase = 'beta'
    # product type may also govern highlight colours
    # known values: information, service
    config.product_type = 'service'
    # govbranding switches on or off the crown logo, full footer and NTA font
    config.govbranding = true
    # feedback_email is the address linked in the alpha/beta bar asking for feedback
    config.feedback_email = 'test@example.com'

  end
end
