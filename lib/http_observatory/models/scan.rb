module HttpObservatory

    #
    # Scan Object
    # 
    # https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md#scan
    # 
    # The scan can exist in one of six states:
    # * ABORTED aborted for internal technical reasons
    # * FAILED failed to complete, typically due to the site being unavailable or timing out
    # * FINISHED completed successfully
    # * PENDING issued by the API but not yet picked up by a scanner instance
    # * STARTING assigned to a scanning instance
    # * RUNNING currently in the process of scanning a website

    class Scan < Base
        attr_accessor :end_time,            # timestamp for when the scan completed
                    :grade,                 # final grade assessed upon a completed scan
                    :hidden,                # whether the scan results are unlisted on the recent results page
                    :response_headers,      # the entirety of the HTTP response headers
                    :likelihood_indicator,  # Mozilla risk likelihod indicator that is the equivalent of the grade 
                    :scan_id,               # unique ID number assigned to the scan
                    :score,                 # final score assessed upon a completed (FINISHED) scan
                    :start_time,            # timestamp for when the scan was first requested
                    :state,                 # the current state of the scan
                    :tests_failed,          # the number of subtests that were assigned a fail result
                    :tests_passed,          # the number of subtests that were assigned a passing result
                    :tests_quantity         # the total number of tests available and assessed at the time of the scan

        # def initialize(args = {})
        #     super(args)
        # end

    end
end