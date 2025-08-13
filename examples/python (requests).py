import requests

response = requests.post(
  "https://api.echo.inferx.in/v1/speech/generate",
  json={
    "text": "Hello world!",
    "voice_id": "af_alloy",
    "advanced_mode": False,
    "speed": 1.0
  },
  headers={
    "ECHO-API-KEY": "your_api_key",
    "Content-Type": "application/json"
  }
)

print(response.json())