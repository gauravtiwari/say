ruby '2.2.3'
source 'https://rubygems.org'
source 'https://rails-assets.org' do
  gem 'rails-assets-swiper'
end

# Setup Rails and API
gem 'rails', '4.2.4'

# Setup server
gem 'passenger'
gem 'jquery-rails'

# Setup react and dependencies
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'react_webpack_rails', github: 'netguru/react_webpack_rails'

# Use redis as database
gem 'ohm'

# Setup caching and Marshalling using Redis
gem 'readthis'
gem 'hiredis'
gem 'oj'

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
