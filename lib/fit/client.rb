require 'fit/client/version'

module Fit
  # Fit::Client provides an interface for interactive with the aerobic.io
  # fit-service.
  #
  module Client
    class << self
      attr_accessor :api_token, :service_uri

      def test_mode!
        @test_mode = true
      end

      def test_mode
        @test_mode == true
      end
    end
  end
end
