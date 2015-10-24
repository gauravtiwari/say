ruby '2.2.3'
source 'https://rubygems.org'

# Setup Rails and API
gem 'rails', '4.2.4'

# Setup server
gem 'passenger'

# Setup react and dependencies
gem 'react_webpack_rails'

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
