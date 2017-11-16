module HttpObservatory

	#
    # Base Class for API objects
    # 
	class Base
		attr_accessor :errors

		def initialize(args = {})
			args.each do |name, value|
				attr_name = name.to_s.downcase.underscore
				send("#{attr_name}=", value) if respond_to?("#{attr_name}=")
			end
		end
	end

end