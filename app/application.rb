class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour > 12
      resp.write "Ahoy, it's the Afternoon, matey!"
    else
      resp.write "Arrrrrrrgh, me hatey the Morning, matey."
    end
    resp.finish
  end
end
