source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'jquery-turbolinks', '~> 2.1'

gem 'simple_form'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'rspec', '~> 3.4'
gem 'simplecov', '~> 0.11.2'
gem 'webrat', '~> 0.7.3'
gem 'sqlite3'

# User
gem 'devise', '~> 3.5', '>= 3.5.6'
# Upload File
gem 'paperclip', '~> 4.3', '>= 4.3.6'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'byebug'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end

group :production do
# for Heroku deployment
  gem 'pg'
  gem 'rails_12factor'
end
