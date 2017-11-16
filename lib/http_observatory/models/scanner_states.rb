module HttpObservatory
    #
    # Scanner State
    # 
    # https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md#scanner-state
    # 
    class ScannerStates < Base

        attr_accessor   :aborted,   # aborted for internal technical reasons
                        :failed,    # failed to complete, typically due to the site being unavailable or timing out
                        :finished,  # completed successfully
                        :pending,   # issued by the API but not yet picked up by a scanner instance
                        :starting,  # assigned to a scanning instance
                        :running    # currently in the process of scanning a website

        # def initialize(args = {})
        #     super(args)
        # end
    end
end