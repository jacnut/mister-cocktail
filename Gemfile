source 'https://rubygems.org'

#---------The following are added for bootstrap and layout-----------
ruby '2.2.0'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'simple_form'
#--------------------------------------------------------------------


#---------The following are to add a picture file--------------------
gem 'figaro'
gem 'aws-sdk', '< 2.0'     #the version '< 2.0' is important!
gem 'paperclip'
#--------------------------------------------------------------------


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'rails_12factor', group: :production
gem 'puma',           group: :production
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


# ---------The jbuilder should be comment unless you need json-----------
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
#------------------------------------------------------------------------



# Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
gem 'pry', group: :development
#-------------------------------------------------------------------------

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'rspec-rails', group: [ :test ]
