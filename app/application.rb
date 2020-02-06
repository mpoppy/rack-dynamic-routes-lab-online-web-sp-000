
class Application

  #should only allow request /items/<ITEM NAME> or else 404 error
  #if correct path, it should return the path
  #if item doesnt exist than 400 and an error msg

  @@items = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items/<ITEM NAME>"
      resp.write
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

end
