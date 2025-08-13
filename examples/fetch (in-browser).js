fetch("https://api.echo.inferx.in/v1/speech/generate", {
  method: "POST",
  headers: {
    "ECHO-API-KEY": "your_api_key",
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    text: "Hello world!",
    voice_id: "af_alloy",
    advanced_mode: false,
    speed: 1.0
  })
})
.then(res => res.json())
.then(data => console.log(data));