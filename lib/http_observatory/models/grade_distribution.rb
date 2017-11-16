module HttpObservatory

	#
    # Host History Object
    # 
    # https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md#grade-distribution
    # 
	class GradeDistribution < Base
		attr_accessor :distribution

		def initialize(args = {})
			self.distribution = args
		end

	end
end