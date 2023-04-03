require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module TestGuru
  class Application < Rails::Application
    config.load_defaults 6.1
    config.time_zone = "Kyiv"
    config.i18n.available_locales = [:uk, :en, :ru]
    config.i18n.default_locale = :uk
  end
end
