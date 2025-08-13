package main

import (
  "bytes"
  "fmt"
  "net/http"
)

func main() {
  data := []byte(`{
    "text": "Hello world!",
    "voice_id": "af_alloy",
    "advanced_mode": false,
    "speed": 1.0
  }`)

  req, _ := http.NewRequest("POST", "https://api.echo.inferx.in/v1/speech/generate", bytes.NewBuffer(data))
  req.Header.Set("ECHO-API-KEY", "your_api_key")
  req.Header.Set("Content-Type", "application/json")

  client := &http.Client{}
  resp, _ := client.Do(req)
  fmt.Println(resp.Body)
}