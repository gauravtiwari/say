break unless Rails.env.production?
  class Rack::Attack
    # Throttle all requests by IP (60rpm)
    throttle('req/ip', :limit => 600, :period => 1.minute) do |req|
      req.ip unless req.path.starts_with?('/assets')
    end

  end

  # Configure app to use Rack::Attack in production
  Rails.application.configure do
    # Use only in production
    config.middleware.use Rack::Attack
  end
