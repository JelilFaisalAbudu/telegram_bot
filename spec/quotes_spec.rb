require_relative '../lib/quotes.rb'
describe Quotes do
  let(:quotes) { Quotes.new }
  describe '#initialize' do
    let(:values) { quotes.values }
    it 'returns true for objects parsed to array' do
      expect(values.is_a?(Array)).to eql(true)
    end
  end

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

  context '#make_request' do
    it 'returns false for a hash object having two key/value pairs' do
      expect(quotes.values.is_a?(Array)).to eql(true)
    end
  end
end
