<?php
$data = json_encode([
  "text" => "Hello world!",
  "voice_id" => "af_alloy",
  "advanced_mode" => false,
  "speed" => 1.0
]);

$ch = curl_init("https://api.echo.inferx.in/v1/speech/generate");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
  "ECHO-API-KEY: your_api_key",
  "Content-Type: application/json"
]);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($ch);
echo $response;
curl_close($ch);
?>