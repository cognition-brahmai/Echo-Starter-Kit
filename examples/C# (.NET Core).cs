using System;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

class Program {
    static async Task Main() {
        var client = new HttpClient();
        client.DefaultRequestHeaders.Add("ECHO-API-KEY", "your_api_key");
        var content = new StringContent("{\"text\":\"Hello world!\",\"voice_id\":\"af_alloy\",\"advanced_mode\":false,\"speed\":1.0}", Encoding.UTF8, "application/json");
        var response = await client.PostAsync("https://api.echo.inferx.in/v1/speech/generate", content);
        Console.WriteLine(await response.Content.ReadAsStringAsync());
    }
}