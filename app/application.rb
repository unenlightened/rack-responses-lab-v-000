class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new
    resp.write time.hour < 12 ? "Good Morning!" : "Good Afternoon!"

    resp.finish
  end

end
