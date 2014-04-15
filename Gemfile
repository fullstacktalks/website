source 'https://rubygems.org'
ruby '2.1.1'

gem 'bugsnag'
gem 'dalli'
gem 'devise'
gem 'figaro'
gem 'haml-rails'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'pg'
gem 'rMeetup', git: 'git://github.com/tannermares/rmeetup.git'
gem 'rack-rewrite'
gem 'rails', '~> 3.2.13'
gem 'thin'

group :production do
  gem 'rack-google-analytics', require: 'rack/google-analytics'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0.0'
  gem 'fakeweb'
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'mailcatcher'
  gem 'meta_request'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'rb-fsevent'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :assets do
  gem 'bootstrap-sass', '~> 2.3.1.0'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end
