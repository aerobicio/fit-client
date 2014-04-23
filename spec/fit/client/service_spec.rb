require 'spec_helper'

describe Fit::Client::Service do
  let(:service) { Fit::Client::Service.new }

  before do
    Fit::Client.service_host = 'localhost'
    Fit::Client.service_port = 80
    Fit::Client.use_ssl = false
  end

  describe '#post' do
    subject { service.post(end_point, params) }

    let(:end_point) { '/v1/something' }
    let(:params) { { foo: 'bar', baz: 'bob' } }

    context 'successfully' do
      let(:json_response) { { 'one' => 'two' } }

      before do
        stub_request(:post, 'http://lol:@localhost/v1/something')
        .to_return(body: '{"one":"two"}')
      end

      it 'should return a parsed JSON response' do
        subject.must_equal(json_response)
      end
    end

    context 'unsuccessfully' do
      context 'via timeout' do
        before do
          stub_request(:post, 'http://lol:@localhost/v1/something').to_timeout
        end

        it 'should return an empty hash' do
          subject.must_equal({})
        end
      end
    end
  end
end
