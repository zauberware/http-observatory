module HttpObservatory
  #
  # Api for application
  #
  class Api
    class << self

      def get_analyze(host)
        response = Request.get('analyze', { 'host' => host })
        Scan.new(response)
      end

      def post_analyze(host, params={})
        response = Request.post('analyze', { 'host' => host, 'hidden' => params[:hidden], 'rescan' => params[:rescan] })
        Scan.new(response)
      end

      def get_scan_results(scan_id)
        response = Request.get("getScanResults", { 'scan' => scan_id })
        response.keys.map{|key| TestResult.new(response[key]) }
      end

      def get_recent_scans(params={})
        params[:min] = params[:min] ? params[:min] : 0
        params[:max] = params[:max] ? params[:max] : 20
        response = Request.get('getRecentScans', { min: params[:min], max: params[:max] })
        RecentScans.new(response)
      end

      def get_host_history(host)
        response = Request.get("getHostHistory", { 'host' => host })
        response.map{|history| HostHistory.new(history) }
      end

      def get_grade_distribution
        response = Request.get('getGradeDistribution')
        GradeDistribution.new(response)
      end

      def get_scanner_states
        response = Request.get('getScannerStates')
        ScannerStates.new(response)
      end

    end
  end
end