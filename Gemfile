source 'https://rubygems.org'


gem 'rails', '4.2.5.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'jquery-turbolinks', '~> 2.1'
# User
gem 'devise', '~> 3.5', '>= 3.5.6'
# Upload File
gem 'paperclip', '~> 4.3', '>= 4.3.6'

gem 'bootstrap-datepicker-rails', :require => 'bootstrap-datepicker-rails',
    :git => 'git://github.com/Nerian/bootstrap-datepicker-rails.git'
group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'simple_form', '~> 3.2', '>= 3.2.1'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
end

group :production do
  gem 'pg' # for Heroku deployment
  gem 'rails_12factor'
end
