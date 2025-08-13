use reqwest::Client;
use serde_json::json;

#[tokio::main]
async fn main() -> Result<(), reqwest::Error> {
  let client = Client::new();
  let res = client.post("https://api.echo.inferx.in/v1/speech/generate")
    .header("ECHO-API-KEY", "your_api_key")
    .header("Content-Type", "application/json")
    .json(&json!({
      "text": "Hello world!",
      "voice_id": "af_alloy",
      "advanced_mode": false,
      "speed": 1.0
    }))
    .send()
    .await?;

  println!("{}", res.text().await?);
  Ok(())
}