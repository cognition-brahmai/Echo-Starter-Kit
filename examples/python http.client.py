import http.client
import json

conn = http.client.HTTPSConnection("api.echo.inferx.in")
payload = json.dumps({
  "text": "Hello world!",
  "voice_id": "af_alloy",
  "advanced_mode": False,
  "speed": 1.0
})
headers = {
  'ECHO-API-KEY': 'your_api_key',
  'Content-Type': 'application/json'
}
conn.request("POST", "/v1/speech/generate", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))