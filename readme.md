## RSS Reader Application on Heroku

Application is running at the site below:

<http://protected-oasis-1115.herokuapp.com>

The Source RSS feed is below:

<http://pipes.yahoo.com/pipes/pipe.run?_id=6adb7c2f4644af358fbe273293c80e43&_render=rss&tag=technology>

The Yahoo Pipe which generate above RSS is below:

<http://pipes.yahoo.com/pipes/pipe.info?_id=6adb7c2f4644af358fbe273293c80e43>

At first, I used activesupport to_json method, but this doesn't process UTF-8 well, so I selected yajl gem. This gem works well.