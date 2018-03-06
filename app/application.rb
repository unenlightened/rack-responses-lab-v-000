class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new
    noon = Time.new(time.year, time.month, time.day, 12)
    resp.write time.hour < 12 ? "Good Morning!" : "Good Afternoon!"

    resp.finish
  end

end
