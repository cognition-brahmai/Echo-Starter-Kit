import vibe.vibe;
import std.json;

void main() {
    auto request = HTTPClientRequest("https://api.echo.inferx.in/v1/speech/generate", HTTPMethod.POST);
    request.headers["ECHO-API-KEY"] = "your_api_key";
    request.headers["Content-Type"] = "application/json";
    request.writeJson(
        ["text": "Hello world!", "voice_id": "af_alloy", "advanced_mode": false, "speed": 1.0]
    );
    auto response = request.perform();
    logInfo(response.bodyReader.readAllUTF8());
}