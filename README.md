# Using the voicerss2017e gem

## Usage

    require 'voicerss2017e'

    voice = VoiceRSSe.new api_key: 'API_KEY'
    voice.tts 'hello world', '/tmp/output.mp3'

The voicerss2017e is an enhancement of the voicerss2017 gem by caching audio files locally to reduce the number of requests to the web API.

## Resources

* voicerss2017e https://rubygems.org/gems/voicerss2017e

voicerss api tts
