require 'net/http'
require 'json'

class Quotes
  @values = nil

  def initialize
    @values = make_request
  end

  def select_random
    @values = @values.sample
    @values
  end
end

def make_request
  url = 'https://type.fit/api/quotes'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  response = JSON.parse(response)
  response
end
