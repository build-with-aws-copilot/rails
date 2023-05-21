require 'uri'
require 'net/http'

class TestJob < ApplicationJob
  def perform(id)
    uri = URI('https://restcountries.com/v3.1/name/china')
    res = Net::HTTP.get_response(uri)
    puts res.body
  end
end