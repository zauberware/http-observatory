module HttpObservatory

  class Request
    class << self

      def get(path, query = {})
        response, status = get_json(path, query)
        status == 200 ? response : errors(response)
      end

      def post(path, query)
        response, status = post_json(path, query)
        status == 201 ? response : errors(response)
      end

      def errors(response)
        error = { errors: { status: response["status"], message: response["message"] } }
        response.merge(error)
      end

      def get_json(root_path, query = {})
        query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
        response = api.get("#{root_path}?#{query_string}")
        [JSON.parse(response.body), response.status]
      end

      def post_json(root_path, query = {})
        query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
        response = api.post("#{root_path}?#{query_string}")
        [JSON.parse(response.body), response.status]
      end

      def api
        Connection.api
      end
    end
  end

end