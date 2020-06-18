require 'rss'
require 'open-uri'

class News
  def send_news
    feed = make_request
    item_index = rand(feed.items.size - 1)
    "#{feed.items[item_index].title}\n#{feed.items[item_index].link}"
  end

  def make_request
    url = 'http://feeds.bbci.co.uk/news/world/rss.xml#'
    URI.parse(url).open do |rss|
      feed = RSS::Parser.parse(rss)
      feed
    end
  end
end
