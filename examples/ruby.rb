require 'net/http'
require 'json'

uri = URI("https://api.echo.inferx.in/v1/speech/generate")
request = Net::HTTP::Post.new(uri)
request["ECHO-API-KEY"] = "your_api_key"
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  text: "Hello world!",
  voice_id: "af_alloy",
  advanced_mode: false,
  speed: 1.0
})

response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
  http.request(request)
end

puts response.body