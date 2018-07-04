# Your application should only accept the /items/<ITEM NAME> route.
# Everything else should 404

class application

def call(env)
  resp = Rack::Response.new
  req  = Rack::Request.new(env)

  if req.path.match(/items/)
    true
  else
    resp.write "Route not found"
    resp.status = 404
  end

  resp.finish
end
end
