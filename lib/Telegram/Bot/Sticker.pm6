unit class Telegram::Bot::Sticker; 
use Telegram::Bot::Core;
also does Telegram::Bot::Core::JsonParseable;

use JSON::Tiny;
use Telegram::Bot::Core;

has $.file-id;
has $.width;
has $.height;
has $.thumb;
has $.file-size;

method parse-from-json($json) {
  self.new(
    file-id => $json{"file_id"},
    width => $json{"width"},
    height => $json{"height"},
    thumb => $json{"thumb"},
    file-size => $json{"file_size"}
  )
}
