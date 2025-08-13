using HTTP
using JSON

headers = [
    "ECHO-API-KEY" => "your_api_key",
    "Content-Type" => "application/json"
]

body = JSON.json(Dict(
    "text" => "Hello world!",
    "voice_id" => "af_alloy",
    "advanced_mode" => false,
    "speed" => 1.0
))

resp = HTTP.request("POST", "https://api.echo.inferx.in/v1/speech/generate", headers, body)
println(String(resp.body))