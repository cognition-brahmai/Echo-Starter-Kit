use LWP::UserAgent;
use HTTP::Request;
use JSON;

my $ua = LWP::UserAgent->new;
my $url = 'https://api.echo.inferx.in/v1/speech/generate';

my $data = encode_json({
    text => 'Hello world!',
    voice_id => 'af_alloy',
    advanced_mode => JSON::false,
    speed => 1.0
});

my $req = HTTP::Request->new(POST => $url);
$req->header('Content-Type' => 'application/json');
$req->header('ECHO-API-KEY' => 'your_api_key');
$req->content($data);

my $resp = $ua->request($req);
print $resp->decoded_content;