require 'spec_helper'

describe Fit::Client do
  describe 'VERSION' do
    subject { Fit::Client::VERSION }

    it { subject.must_be_instance_of(String) }
    it { subject.must_match(/\d{1,2}\.\d{1,2}\.\d{1,2}/) }
  end
end
