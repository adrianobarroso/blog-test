source 'https://rubygems.org'
ruby '2.3.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~> 3.3'
gem 'font-awesome-sass', '~> 4.7'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'simple_form'
gem 'redcarpet'
gem 'sidekiq'
gem 'sidekiq-failures', '~> 1.0'

group :test do
  gem 'capybara'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'rspec-rails', '~> 3.7'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
