require "http_observatory/models/base"
require "http_observatory/models/grade_distribution"
require "http_observatory/models/host_history"
require "http_observatory/models/recent_scans"
require "http_observatory/models/scan"
require "http_observatory/models/test_result"
require "http_observatory/models/scanner_states"
require "http_observatory/connection"
require "http_observatory/request"
require "http_observatory/api"

module HttpObservatory
  class Engine < ::Rails::Engine
    isolate_namespace HttpObservatory
  end
end
