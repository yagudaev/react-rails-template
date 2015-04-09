source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'sprockets-coffee-react'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'puma' # web server

# Client-side Assets
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'react-rails', github: 'reactjs/react-rails'
gem 'react-bootstrap-rails'

group :development do
  gem 'guard-livereload', '~> 2.4', require: false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl'

  gem 'guard'
  gem 'guard-rspec', require: false

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :production do
  gem 'rails_12factor'
end