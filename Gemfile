# frozen_string_literal: true

source 'http://rubygems.org'

gemspec

gem 'rails', '~> 6.1'

platforms :ruby do
  gem 'sass'
  gem 'sqlite3'
  gem 'sprockets-rails'
  gem 'sassc'

  group :development do
    gem 'unicorn', '~> 4.0.1'
  end

  group :development, :test do
    gem 'capybara'
    gem 'rubocop-rails'
    gem 'jquery-rails', '~> 4.0.4'
    gem 'mynyml-redgreen', '~> 0.7.1', require: 'redgreen'
  end

  group :active_record do
    gem 'carrierwave'
    gem 'dragonfly'
    gem 'mini_magick'
    gem 'paperclip', '~> 6.1.0'
    gem 'refile', require: 'refile/rails'
    gem 'refile-mini_magick'
  end

  group :mongoid do
    gem 'bson_ext'
    gem 'carrierwave-mongoid', require: 'carrierwave/mongoid'
    gem 'mongoid'
    gem 'mongoid-paperclip', require: 'mongoid_paperclip'
    gem 'shrine'
    gem 'shrine-mongoid'
    gem 'image_processing'
  end
end
