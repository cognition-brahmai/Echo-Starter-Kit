const axios = require("axios");

axios.post("https://api.echo.inferx.in/v1/speech/generate", {
  text: "Hello world!",
  voice_id: "af_alloy",
  advanced_mode: false,
  speed: 1.0
}, {
  headers: {
    "ECHO-API-KEY": "your_api_key",
    "Content-Type": "application/json"
  }
})
.then(res => console.log(res.data))
.catch(err => console.error(err));