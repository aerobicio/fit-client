require 'fit/client/version'

module Fit
  # Fit::Client provides an interface for interactive with the aerobic.io
  # fit-service.
  #
  module Client
    def self.api_token=(uri)
      @@api_token = uri
    end

    def self.api_token
      @@api_token
    end

    def self.service_uri=(uri)
      @@service_uri = uri
    end

    def self.service_uri
      @@service_uri
    end
  end
end
