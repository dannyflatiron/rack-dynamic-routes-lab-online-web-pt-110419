require 'pry'
class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry

    if req.path.match(/items/)
      
      # items is used because I found it in the spec folder
      item_price = req.path.split("/items/")
      @@items.find{|s| s.price == item_price}
    end

  end


end
