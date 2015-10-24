class ApplicationController < ActionController::Base

  before_filter :setup_headers, if: :production?

  private

    def setup_headers
      # Setup Secure header
      ensure_security_headers(
        :hsts             => {:max_age => 631138519, :include_subdomains => false},
        :x_xss_protection => {:value => 1, :mode => 'block'},
        :x_content_type_options => {:value => 'nosniff'},
        :x_download_options => {:value => 'noopen'},
        :x_permitted_cross_domain_policies => {:value => 'none'},
        :x_frame_options => 'DENY',
        :csp => false
      )
    end

    def production?
      Rails.env.production?
    end

end
