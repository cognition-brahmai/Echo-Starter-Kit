body = %{
  "text" => "Hello world!",
  "voice_id" => "af_alloy",
  "advanced_mode" => false,
  "speed" => 1.0
} |> Jason.encode!()

headers = [
  {"ECHO-API-KEY", "your_api_key"},
  {"Content-Type", "application/json"}
]

{:ok, response} = HTTPoison.post("https://api.echo.inferx.in/v1/speech/generate", body, headers)
IO.puts(response.body)