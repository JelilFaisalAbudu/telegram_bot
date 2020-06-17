require_relative '../lib/quotes.rb'
describe Quotes do
  let(:quotes) { Quotes.new }
  context '#select_ramdom' do
    it 'returns true for a hash object having two key/value pairs' do
      expect(quotes.select_random.size).to eql(2)
    end
  end

  context '#select_ramdom' do
    it 'returns false for a hash object having two key/value pairs' do
      expect(quotes.select_random.size).not_to eql(1)
    end
  end
end
