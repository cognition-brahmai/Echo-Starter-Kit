<?php
require 'vendor/autoload.php';
use GuzzleHttp\Client;

$client = new Client();
$response = $client->post('https://api.echo.inferx.in/v1/speech/generate', [
    'headers' => [
        'ECHO-API-KEY' => 'your_api_key',
        'Content-Type' => 'application/json'
    ],
    'json' => [
        'text' => 'Hello world!',
        'voice_id' => 'af_alloy',
        'advanced_mode' => false,
        'speed' => 1.0
    ]
]);
echo $response->getBody();
?>