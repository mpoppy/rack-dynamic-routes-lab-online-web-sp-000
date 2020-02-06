
class Application

  #should only allow request /items/<ITEM NAME> or else 404 error
  #if correct path, it should return the path
  #if item doesnt exist than 400 and an error msg

  @@items = [Item.new("Apples",5), Item.new("Oranges",2)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      item_name = req.path.split("/items/").last
      if item = @@items.find{|i| i.name == item_name}
        resp.write item.price
      else
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.status = 404
      resp.write "Route not found"
    end

    resp.finish
  end

end
