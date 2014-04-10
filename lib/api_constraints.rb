class ApiConstraints
	def initialize(options)
		@version = options[:version]
		@default = options[:default]
	end
    
	def matches?(req)
		@default || req.headers['Accept'].include?("application/vnd.example.v#{@version}")
	end

	# def matches?(request)
	# 	versioned_accept_header?(request) || @version == 1
	# end
		 
	# private
		 
	# def versioned_accept_header?(request)
	# 	accept = request.headers['Accept']
		 
	# 	if accept
	# 		mime_type, version = accept.gsub(/\s/, "").split(";")
	# 		mime_type.match(/vnd\.myapp\+json/) && version == "version=#{@version}"
	# 	end
	# end
end