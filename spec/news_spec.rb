require_relative '../lib/news.rb'

describe News do
  let(:news) { News.new }
  context '#send_news' do
    it 'returns true for an object that is a string object' do
      expect(news.send_news.is_a?(String)).to eql(true)
    end
  end

  context '#send_news' do
    it 'returns false for an object that is a string object' do
      expect(news.send_news.is_a?(Hash)).to eql(false)
    end
  end

  context '#make_request' do
    it 'returns true for RSS request' do
      expect(news.make_request.class).to eql(RSS::Rss)
    end
  end
end
