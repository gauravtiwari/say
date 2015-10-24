ruby '2.2.3'
source 'https://rubygems.org'

# Setup Rails and API
gem 'rails', '4.2.4'

# Setup server
gem 'passenger'

# Setup react and dependencies
gem 'therubyracer', platforms: :ruby
gem 'react_webpack_rails'

# Use redis as database
gem 'ohm'

# Setup caching and Marshalling using Redis
gem 'readthis'
gem 'hiredis'
gem 'oj'

group :production do
  gem 'rails_12factor'
  # Throttle Malacious requests
  gem 'rack-attack'
  gem "secure_headers", :require => 'secure_headers'
end

group :development do
  gem 'spring'
  gem 'foreman'
  gem 'figaro'
end
