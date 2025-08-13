require 'httparty'

response = HTTParty.post("https://api.echo.inferx.in/v1/speech/generate",
  headers: {
    "ECHO-API-KEY" => "your_api_key",
    "Content-Type" => "application/json"
  },
  body: {
    text: "Hello world!",
    voice_id: "af_alloy",
    advanced_mode: false,
    speed: 1.0
  }.to_json
)

puts response.body