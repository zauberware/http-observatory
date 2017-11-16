require 'faraday'
require 'json'

module HttpObservatory
	#
	# See https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md
	#
	class Connection
	  BASE = 'https://http-observatory.security.mozilla.org/api/v1'

	  def self.api
	    Faraday.new(url: BASE) do |faraday|
	      faraday.response :logger
	      faraday.adapter Faraday.default_adapter
	      faraday.headers['Content-Type'] = 'application/json'
	    end
	  end
	end
end