source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 7.1.3.2'
gem 'pg'
gem 'puma', '~> 5.6'
gem "sassc-rails"
gem 'jsbundling-rails'
gem "cssbundling-rails", "~> 1.1"
gem 'rack-cors', :require => 'rack/cors'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
end

group :development do
  gem 'foreman'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
