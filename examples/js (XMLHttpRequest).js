var xhr = new XMLHttpRequest();
xhr.open("POST", "https://api.echo.inferx.in/v1/speech/generate");
xhr.setRequestHeader("ECHO-API-KEY", "your_api_key");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.onreadystatechange = function () {
  if (xhr.readyState === 4) {
    console.log(xhr.responseText);
  }
};
xhr.send(JSON.stringify({
  text: "Hello world!",
  voice_id: "af_alloy",
  advanced_mode: false,
  speed: 1.0
}));