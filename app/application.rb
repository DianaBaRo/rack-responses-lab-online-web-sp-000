class Application

  def call(env)
    resp = Rack::Response.new
    resp.write ""
    resp.finish

    time = Time.now

    if time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
  end

end
