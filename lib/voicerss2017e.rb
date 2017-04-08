#!/usr/bin/env ruby

# file: voicerss2017e.rb

require 'digest/md5'
require 'voicerss2017'
require 'fileutils'

class VoiceRSSe
 
  def initialize(api_key: nil, config: {}, cache_filepath: 'cache')

    @config = ({
      'key' => api_key,
      'hl' => 'en-gb',
      'src' => 'hello world',
      'r' => '0',
      'c' => 'mp3',
      'f' => '44khz_16bit_stereo',
      'ssml' => 'false',
      'b64' => 'false'
    }).merge config
    
    @cache_filepath = cache_filepath
    
  end

  def tts(text='', audiofile_out='output.mp3')

    FileUtils.mkdir_p @cache_filepath
    
    h = Digest::MD5.new << text
    filename = File.join(@cache_filepath, h.to_s + '.mp3')
    
    
    # attempts to find the audio file from a local cache instead of 
    # making a relatively expensive request through the web API
    
    if not File.exists? filename then
            
      voice = VoiceRSS.speech(@config.merge!({'src' => text}))
      File.write filename, voice['response']      

    end    
    
      FileUtils.cp filename, audiofile_out    

  end

end
