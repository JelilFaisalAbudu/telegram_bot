# frozen_string_literal: true

require_relative '../lib/news.rb'
require 'json'

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
end
