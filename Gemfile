# frozen_string_literal: true

source 'https://rubygems.org'

gem 'puma', '>= 5.0'
gem 'rails', '~> 8.0.0'
gem 'sqlite3', '>= 1.4'

# Optional, used or pagination
gem 'kaminari-activerecord'

gem 'adequate_json'

gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'bootsnap', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem 'brakeman', require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem 'rubocop', require: false

  gem 'faker'
end
