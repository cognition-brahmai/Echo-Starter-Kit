import okhttp3.*
import org.json.JSONObject

fun main() {
    val client = OkHttpClient()
    val json = JSONObject()
    json.put("text", "Hello world!")
    json.put("voice_id", "af_alloy")
    json.put("advanced_mode", false)
    json.put("speed", 1.0)

    val body = RequestBody.create(MediaType.get("application/json; charset=utf-8"), json.toString())
    val request = Request.Builder()
        .url("https://api.echo.inferx.in/v1/speech/generate")
        .addHeader("ECHO-API-KEY", "your_api_key")
        .addHeader("Content-Type", "application/json")
        .post(body)
        .build()

    client.newCall(request).execute().use { response ->
        println(response.body()?.string())
    }
}