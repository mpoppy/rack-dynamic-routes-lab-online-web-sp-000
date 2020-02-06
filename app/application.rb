
class Application

  #should only allow request /items/<ITEM NAME> or else 404 error
  #if correct path, it should return the path
  #if item doesnt exist than 400 and an error msg
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  end


end
