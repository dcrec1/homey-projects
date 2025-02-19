source "https://rubygems.org"

ruby '3.3.6'
gem "dartsass-rails"
gem "bootstrap", "~> 5.3.3"
gem "friendly_id", "~> 5.5.0"
gem "paper_trail"
gem "rails", "~> 8.0.1"
gem "propshaft"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem 'pg'
gem "slim-rails"
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "devise", "~> 4.9"
gem "simple_form", "~> 5.3"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "factory_bot_rails"
  gem "brakeman", require: false
  gem "rspec-rails", "~> 7.0.0"
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 6.0"
end
