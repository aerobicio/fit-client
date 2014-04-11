require 'fit/client'

require 'minitest/autorun'
require 'minitest/spec'

module MiniTest
  # Monkey patch MiniTest::Spec to include a context method.
  #
  class Spec
    class << self
      alias_method :context, :describe
    end
  end
end
