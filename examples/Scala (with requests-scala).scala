import requests._

val url = "https://api.echo.inferx.in/v1/speech/generate"
val data = ujson.Obj(
  "text" -> "Hello world!",
  "voice_id" -> "af_alloy",
  "advanced_mode" -> false,
  "speed" -> 1.0
)
val resp = requests.post(url, data=ujson.write(data),
  headers = Seq(
    "ECHO-API-KEY" -> "your_api_key",
    "Content-Type" -> "application/json"
  )
)
println(resp.text)