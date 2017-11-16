module HttpObservatory
	#
    # Recent Scans Object
    # 
    # https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md#recent-scans
    # 
	class RecentScans < Base
		attr_accessor :results

		def initialize(args = {})
			self.results = args
		end

	end
end