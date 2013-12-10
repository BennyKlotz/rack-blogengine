module Rack
  module Blogengine
    class Application
		def self.call(env)
			# Router for map docs to routes
			route = ApplicationRouter.map_route(env, $targetfolder) 
			if route  
				return route["response"] 
			else 
				return [404, {"Content-Type" => "text/html"}, ["Page not found"]] 
			end 
		end                
    end
  end
end