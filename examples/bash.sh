curl -X POST https://api.echo.inferx.in/v1/speech/generate \
  -H "ECHO-API-KEY: your_api_key" \
  -H "Content-Type: application/json" \
  -d '{
    "text": "Hello world!",
    "voice_id": "af_alloy",
    "advanced_mode": false,
    "speed": 1.0
  }'