# Your application should only accept the /items/<ITEM NAME> route.
# Everything else should 404

class application

def call(env)
  resp = Rack::Response.new
  req  = Rack::Request.new(env)
end
end
