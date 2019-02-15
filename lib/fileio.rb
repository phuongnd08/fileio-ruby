require 'fileio/version'
require 'net/http'
require 'net/https'
require 'json'

module Fileio
  def self.upload(path, expires: nil)
    url = "https://file.io"
    if expires
      url += "?expires=#{expires}"
    end

    uri = URI.parse(url)
    request = Net::HTTP::Post.new(uri)
    form_data = [['file', File.open(path, "rb")]] # or File.open() in case of local file

    request.set_form form_data, 'multipart/form-data'
    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http| # pay attention to use_ssl if you need it
      http.request(request)
    end

    JSON.parse(response.body).tap do |result|
      puts result["link"]
    end
  end
end
