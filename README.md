# SystemEventsClient

REST endpoint definitions to the system-event-api backend.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'system_events_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install system_events_client

## Usage

```
export SYSTEM_EVENTS_API_URL=http://system-events.kicksite.test:3000
# ===================================================================================================
# Required for the test suite to be able to auth before each call
# ===================================================================================================
export KICKSITE_ADMIN_USERNAME=KicksiteAdmin
export KICKSITE_ADMIN_PASSWORD=<password>
export KICKSITE_AUTH_URL=http://auth.kicksite.test:5004
# ===================================================================================================
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/system_events_client.
