#include <iostream>
#include <curl/curl.h>

int main() {
    CURL *curl = curl_easy_init();
    if (curl) {
        struct curl_slist *headers = NULL;
        headers = curl_slist_append(headers, "ECHO-API-KEY: your_api_key");
        headers = curl_slist_append(headers, "Content-Type: application/json");
        const char *data = "{\"text\":\"Hello world!\",\"voice_id\":\"af_alloy\",\"advanced_mode\":false,\"speed\":1.0}";
        curl_easy_setopt(curl, CURLOPT_URL, "https://api.echo.inferx.in/v1/speech/generate");
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);
        CURLcode res = curl_easy_perform(curl);
        if(res != CURLE_OK)
            std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << std::endl;
        curl_easy_cleanup(curl);
    }
    return 0;
}