const https = require("https");

const data = JSON.stringify({
  text: "Hello world!",
  voice_id: "af_alloy",
  advanced_mode: false,
  speed: 1.0
});

const options = {
  hostname: "api.echo.inferx.in",
  path: "/v1/speech/generate",
  method: "POST",
  headers: {
    "ECHO-API-KEY": "your_api_key",
    "Content-Type": "application/json",
    "Content-Length": data.length
  }
};

const req = https.request(options, res => {
  let result = "";
  res.on("data", chunk => result += chunk);
  res.on("end", () => console.log(JSON.parse(result)));
});

req.write(data);
req.end();