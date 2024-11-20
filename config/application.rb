# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AdequateJsonSample
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])
    config.api_only = true

    # AdequateJson.configure do |c|
    #   c.serializers_module :json
    #   c.use_model_name_for_collection_key true
    #   c.collection_key :list
    # end
  end
end
