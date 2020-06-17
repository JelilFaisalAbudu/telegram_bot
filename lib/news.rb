require 'rss'
require 'open-uri'

class News
  attr_reader :url
  def initialize
    @url = 'http://feeds.bbci.co.uk/news/world/rss.xml#'
    @news_item = nil
  end

  def send_news
    URI.parse(@url).open do |rss|
      feed = RSS::Parser.parse(rss)
      item_index = rand(feed.items.size - 1)
      @news_item =
        "#{feed.items[item_index].title}\n#{feed.items[item_index].link}"
    end
  end
end
