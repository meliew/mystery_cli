# MysteryCli

Welcome to MysteryCLI! This gem will teach you about all the sub-genres related to "Mystery" and can help you find your latest binge read by providing a list of new releases available now. This gem scrapes Goodreads for bios on genres as well as book titles. 

# Getting started

These instructions will get a copy of MysteryCli up and running on your local machine. 

## Requirements 

You'll need to have ruby installed as well as the following gems: 

```
gem install colorize 
```

```ruby
gem 'mystery_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mystery_cli

## Usage

Mystery_CLI is a simple gem that helps mystery book lovers explore new subgenres of mysteries, and find out what books have newly released in those subgenres. To get started you'll run, 'bin/run'

After the introduction, you'll be asked to select a number for the sub-genre you'ld like to learn more about. After selecting a number you'll see a short bio about that mystery sub-genre. 

The program will then ask whether you'd like to see a list of new-releases for that sub-genre, whether you'd like to choose a different sub-genre, or whether you'd like to quit the program. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'meliew'/mystery_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MysteryCli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'meliew'/mystery_cli/blob/master/CODE_OF_CONDUCT.md).
