require 'rss'
require 'sinatra'

helpers do
  def put_rss
    rss_source = 'http://pipes.yahoo.com/pipes/pipe.run?_id=6adb7c2f4644af358fbe273293c80e43&_render=rss&tag=technology'
    rss = RSS::Parser.parse(rss_source, true)
    text =''
    rss.channel.items.each do |item|
      text += item.title
    end
    p text
  end
end
    
get '/' do
  put_rss
end