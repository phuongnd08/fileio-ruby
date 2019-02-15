$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'fileio'
require 'vcr'
require 'webmock'
require 'byebug'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
