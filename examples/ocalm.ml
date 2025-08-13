(* Use Cohttp and Yojson *)
open Lwt.Infix

let () =
  let uri = Uri.of_string "https://api.echo.inferx.in/v1/speech/generate" in
  let headers = Cohttp.Header.of_list [
      ("ECHO-API-KEY", "your_api_key");
      ("Content-Type", "application/json");
    ]
  in
  let body = Yojson.Basic.to_string (`Assoc [
      "text", `String "Hello world!";
      "voice_id", `String "af_alloy";
      "advanced_mode", `Bool false;
      "speed", `Float 1.0
    ])
  in
  Lwt_main.run (
    Cohttp_lwt_unix.Client.post ~headers ~body:(Cohttp_lwt.Body.of_string body) uri >>= fun (resp, body_stream) ->
    Cohttp_lwt.Body.to_string body_stream >>= fun body ->
    print_endline body;
    Lwt.return_unit
  )