ruby '2.2.3'
source 'https://rubygems.org'
source 'https://rails-assets.org' do
  gem 'rails-assets-swiper'
end

# Setup Rails and API
gem 'rails', '4.2.4'
gem 'pg'

# Setup server
gem 'passenger'

# Setup react and dependencies
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'autoprefixer-rails'

# Setup caching and Marshalling using Redis
gem 'readthis'
gem 'hiredis'
gem 'oj'

# Image Processing
gem "mini_magick"
gem 'carrierwave'
gem 'fog', require: 'fog/google'

# Background job
gem 'sidekiq'

# Throttle Malacious requests
gem 'rack-attack'

group :production do
  gem 'rails_12factor'
  gem "secure_headers", :require => 'secure_headers'
end

group :development do
  gem 'foreman'
  gem 'figaro'
end
