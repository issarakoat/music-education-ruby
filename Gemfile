source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'


gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end



gem 'simple_form'
gem 'devise'
gem 'friendly_id', '~> 5.4.0'
gem 'ransack'
gem 'public_activity'
gem "rolify"
gem "pundit"
gem 'pagy'

gem "chartkick"
gem 'groupdate'

gem 'rails-erd', group: :development #sudo apt-get install graphviz; bundle exec erd
gem 'ranked-model' #give serial/index numbers to items in a list
gem "aws-sdk-s3", require: false #save images and files in production
gem 'active_storage_validations' #validate image and file uploads
gem 'image_processing' #sudo apt install imagemagick