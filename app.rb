require 'sinatra'
require 'json'
require 'net/http'
require 'active_support/core_ext'

get '/' do
  xml = Net::HTTP.get 'pipes.yahoo.com', '/pipes/pipe.run?_id=6adb7c2f4644af358fbe273293c80e43&_render=rss&tag=technology'
  # json = Hash.from_xml(xml).to_json
end