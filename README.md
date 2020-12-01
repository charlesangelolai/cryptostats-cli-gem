# Cryptostats-CLI-Gem

Welcome to Cryptostats!
Cryptostats is a CLI ruby gem that fetches meta data of the top 100 cryptocurrencies from the CoinGecko API and displays updated statistis regarding the current prices, market cap, volume, price change, etc.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cryptostats-cli-gem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cryptostats-cli-gem

## Usage

1. Execute inside the directory

    $ ruby bin/run

2. Enter the crypto number of the cryptocurrency for more details: (1 - 100)

3. Crypto Stats is displayed.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cryptostats-cli-gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/cryptostats-cli-gem/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cryptostats::Cli::Gem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cryptostats-cli-gem/blob/master/CODE_OF_CONDUCT.md).
