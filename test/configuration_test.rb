require 'test_helper'

describe Fit::Client do
  describe '#service_uri' do
    subject { Fit::Client.service_uri }

    before do
      Fit::Client.service_uri = 'lol'
    end

    it { subject.must_equal('lol') }
  end

  describe '#api_token' do
    subject { Fit::Client.api_token }

    before do
      Fit::Client.api_token = 'lol'
    end

    it { subject.must_equal('lol') }
  end
end
