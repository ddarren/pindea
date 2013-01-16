source 'http://rubygems.org'

gem 'rails', '3.2.11'
gem 'thin'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'pjax-rails'
gem 'will_paginate', '~> 3.0'
gem 'settingslogic'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.2.3"
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "rspec-rails", "~> 2.0", :group => [:test, :development]
gem "launchy", :group => [:test, :development]

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem "capybara"
  gem 'factory_girl_rails'
  gem "guard-rspec" 
  gem "spork"
  gem "guard-spork"
end
