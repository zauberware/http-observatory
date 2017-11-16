module HttpObservatory

	#
    # Host History Object
    # 
    # https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md#host-history
    # 
	class HostHistory < Base
		
		attr_accessor 	:end_time,
						:end_time_unix_timestamp,
						:grade,
						:scan_id,
						:score

		# def initialize(args = {})
		# 	super(args)
		# end

	end


end