Gem::Specification.new do |s|
  s.name = 'voicerss2017e'
  s.version = '0.1.1'
  s.summary = 'An enhancement of the voicerss2017 gem by caching audio ' + 
      'files locally to reduce the number of requests to the web API.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/voicerss2017e.rb']
  s.add_runtime_dependency('voicerss2017', '~> 0.1', '>=0.1.0')
  s.signing_key = '../privatekeys/voicerss2017e.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/voicerss2017e'
end
