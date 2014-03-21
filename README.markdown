# Lettrics

This is a simple gem to share some javascript that displays a character
countdown to the user when entering text in a character-limited field. It works
with Rails applications.

## Installation

Add to your Gemfile:

    group :assets do
      gem 'lettrics'
    end

Execute:

    $ bundle

Add to your 'app/assets/javascripts/application.js':

    //= require lettrics

## Usage

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Please be sure to test any new features and to run the current test suite with
RSpec.

This project rocks and uses MIT-LICENSE.
