source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.5'

gem 'pg', '~> 0.21.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# serializer for API responses
gem 'active_model_serializers', '~> 0.10.8'

# apipie for documentation
gem 'apipie-rails', '0.5.5'

# gem to protect API
gem 'rack-attack', '~> 5.0.1'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rspec-rails', '~> 5.0.0'

# apipie for documentation
gem 'apipie-rails', '0.5.5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false


# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails', '~> 6.1'
  gem 'active_record_query_trace', '~> 1.5.4'
  gem 'better_errors', '~> 2.4.0'
  gem 'faker', '~> 1.9'
  gem 'letter_opener', '~> 1.4.1'
  gem 'letter_opener_web', '~> 1.3.1'
  gem 'rubocop', '~> 0.63.0'
end

# Testing only gems
group :test do
  gem 'database_cleaner', '~> 1.6.2'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.2'
  gem 'rspec-sidekiq', '~> 3.0.3'
  gem 'rspec_junit_formatter'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  gem 'shoulda-matchers', '~> 3.1.2', require: false
  gem 'simplecov', '~> 0.15.1', require: false
  gem 'webmock', '~> 3.4', '>= 3.4.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
