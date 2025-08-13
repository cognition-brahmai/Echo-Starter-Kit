Invoke-RestMethod -Uri "https://api.echo.inferx.in/v1/speech/generate" -Method POST -Headers @{
  "ECHO-API-KEY" = "your_api_key"
  "Content-Type" = "application/json"
} -Body '{
  "text": "Hello world!",
  "voice_id": "af_alloy",
  "advanced_mode": false,
  "speed": 1.0
}'