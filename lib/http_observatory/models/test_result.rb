module HttpObservatory
    #
    # Scan Object
    # 
    # https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md#tests
    # 
    class TestResult < Base

        attr_accessor :expectation, # the expectation for a test result going in
        :name,                      # the name of the test; this should be the same as the parent object's name
        :output,                    # artifacts related to the test; these can vary widely between tests and are not guaranteed to be stable 
        :pass,                      # whether the test passed or failed; a test that meets or exceeds the expectation will be marked as passed
        :result,                    # result of the test
        :score_description,         # short description describing what result means
        :score_modifier             # how much the result of the test affected the final score; should range between +5 and -50

        # output data
        # data    generally as close to the raw output of the test as is possible. For example, in the strict-transport-security test, output -> data contains the raw Strict-Transport-Security header
        # ???? other values under output have keys that vary; for example, the strict-transport-security test has a includeSubDomains key that is either set to True or False. Similarly, the redirection test contains a route key that contains an array of the URLs that were redirected to. See example below for more available keys.

        # def initialize(args = {})
        #     super(args)
        # end
    end
end