library(httr)
library(jsonlite)

url <- "https://api.echo.inferx.in/v1/speech/generate"
body <- toJSON(list(
  text = "Hello world!",
  voice_id = "af_alloy",
  advanced_mode = FALSE,
  speed = 1.0
), auto_unbox = TRUE)

res <- POST(url, add_headers(
  "ECHO-API-KEY" = "your_api_key",
  "Content-Type" = "application/json"
), body = body)

print(content(res, "text"))