import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class Main {
  public static void main(String[] args) throws Exception {
    URL url = new URL("https://api.echo.inferx.in/v1/speech/generate");
    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
    conn.setRequestMethod("POST");
    conn.setRequestProperty("ECHO-API-KEY", "your_api_key");
    conn.setRequestProperty("Content-Type", "application/json");
    conn.setDoOutput(true);

    String jsonInputString = "{ \"text\": \"Hello world!\", \"voice_id\": \"af_alloy\", \"advanced_mode\": false, \"speed\": 1.0 }";

    try (OutputStream os = conn.getOutputStream()) {
      byte[] input = jsonInputString.getBytes("utf-8");
      os.write(input, 0, input.length);
    }

    System.out.println(new String(conn.getInputStream().readAllBytes()));
  }
}