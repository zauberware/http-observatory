require 'test_helper'

class ApiTest < ActiveSupport::TestCase

	# just a test if requests are working
	setup do
		WebMock.stub_request(:any, /api\/v1/).to_return(body: {}.to_json, status: 200,
    headers: { 'Content-Length' => 3 })
	end

	test 'api_text' do
		HttpObservatory::Api.get_analyze('www.zauberware.com')
		HttpObservatory::Api.post_analyze('www.zauberware.com')
		HttpObservatory::Api.get_scan_results(123123123)
		HttpObservatory::Api.get_host_history('www.zauberware.com')
		HttpObservatory::Api.get_recent_scans
		HttpObservatory::Api.get_grade_distribution
		HttpObservatory::Api.get_scanner_states
	end

end