require 'test_helper'

describe Fit::Client do
  describe '#api_token' do
    subject { Fit::Client.api_token }

    before do
      Fit::Client.api_token = 'lol'
    end

    it { subject.must_equal('lol') }
  end

  describe '#service_uri' do
    subject { Fit::Client.service_uri }

    before do
      Fit::Client.service_uri = 'lol'
    end

    it { subject.must_equal('lol') }
  end

  describe '#test_mode' do
    subject { Fit::Client.test_mode }

    it { subject.must_equal(false) }

    context 'when turned on' do
      before do
        Fit::Client.test_mode!
      end

      it { subject.must_equal(true) }
    end
  end
end
