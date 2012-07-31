require 'sinatra'
require 'net/http'
require 'yajl'
require 'active_support/core_ext'

get '/' do
  xml = Net::HTTP.get 'pipes.yahoo.com', '/pipes/pipe.run?_id=6adb7c2f4644af358fbe273293c80e43&_render=rss&tag=technology'
  xml.force_encoding 'utf-8'
  content_type 'application/json'
  Yajl::Encoder.encode(Hash.from_xml(xml))
end