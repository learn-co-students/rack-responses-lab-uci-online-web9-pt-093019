require 'rack'

class Application

    def call(env)
      resp = Rack::Response.new

      if Time.now.hour < 12
        resp.write "#{Time.now}\n"
        resp.write "Good Morning!"
      else
        resp.write "#{Time.now}\n"
        resp.write "Good Afternoon!"
      end

      resp.finish
    end
end
