require 'fit/client'

require 'minitest/autorun'
require 'minitest/nc'if RUBY_PLATFORM.include?("darwin")
require 'minitest/spec'
require 'webmock/minitest'

module MiniTest
  # Monkey patch MiniTest::Spec to include a context method.
  #
  class Spec
    class << self
      alias_method :context, :describe
    end
  end
end
