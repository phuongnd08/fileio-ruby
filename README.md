# Fileio

Fileio come with GeoLite2-City.mmdb so that it will resolve
either IPv4 or IPv6 to country and city without a need for a request.

All you need is: `Fileio.resolve(ip)`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fileio'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fileio

## Usage

Get all location data:
    Fileio.resolve(ip)

Get country data:

    Fileio.resolve_country(ip)

Get country code:

    Fileio.resolve_country_code(ip)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/phuongnd08/fileio.

