class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new
    noon = DateTime.new (time.year, time.month, time.day, 12)
    resp.write time < noon ? "Good Morning!" : "Good Afternoon!"

    resp.finish
  end

end
