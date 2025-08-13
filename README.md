# Echo Starter Kit

**Your Launchpad for Text-to-Speech Awesomeness.**

Welcome to the official Starter Kit for Echo by BRAHMAI—a playground for devs to flip text into real, fast, multilingual speech, with code samples for every language that matters (and a few that don’t, just for laughs).

---

## 🔥 What’s Inside

- **Ready-to-run API code in...**
  - JS (browser, Node, Axios, XMLHttpRequest)
  - Python (requests, httpx, http.client)
  - Java, Go, Rust, PHP, C, C++, Ruby, Swift, Kotlin, Dart, C#, Perl, Haskell, Elixir, Scala, R, Julia, D, OCaml (yup, we went there)
  - Bash & PowerShell for CLI folks

- **Sample curl command for the lazy genius**

- **Easy edit—just paste your API key and go**

---

## 🚀 Usage

1. **Get your API key**  
   Sign up on [Echo Playground](https://echo.brahmai.in) or [contact the team](mailto:support@brahmai.in).

2. **Choose your language**  
   Head to `/examples/` and pick any of the 32 example snippets for your favorite language.

3. **Update your API key**  
   Replace `your_api_key` with your actual Echo API key in the code.

4. **Run and profit**  
   Output is a JSON with the voice details and a link to your shiny new audio.

---

## 💡 Example Request

**The standard curl:**

> Please note that the `language` parameter in the API is only available in BETA right now. Langauge detection currently works out of the box right now with 100% accuracy. We will soon release the language parameter in the stable API and save additional ~2 seconds for you.

```bash
curl -X POST https://api.echo.inferx.in/v1/speech/generate \
  -H "ECHO-API-KEY: YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "text": "Hello world!",
    "voice_id": "af_alloy",
    "advanced_mode": false,
    "speed": 1.0
  }'
```

**Sample Response:**
```json
{
  "voice_pack": {
    "name": "Sarah",
    "gender": "female",
    "nationality": "american"
  },
  "audio": "https://api.echo.inferx.in/speech/76f9f076-469a-49b4-9b08-4bbe4a3fe98f.wav"
}
```

---

## 🧑‍💻 Languages Covered

Check out the `/examples/` folder for code snippets in every mainstream—and a few not-so-mainstream—languages.

If your fave stack is missing, **open an issue** or flex your own PR!

---

## 💬 Support

- Hit up [Echo Playground](https://echo.brahmai.in) for interactive demos
- For enterprise, student discounts, or general sass: [support@brahmai.com](mailto:support@brahmai.com)

---

## 👑 LICENSE

Echo Starter Kit is released under the MIT License.  
Steal it, remix it, but don’t be evil.

---

**No more boring text, only real speech.  
Let’s build some AI magic, bro.**

From India, for the world.  
© 2025 BRAHMAI.