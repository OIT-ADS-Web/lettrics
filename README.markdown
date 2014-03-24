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

Use the `#lettrics-characters-available` and `#with-lettrics` tags in your
markup:

    You may enter <span id="lettrics-characters-available">4000</span> characters.
    <textarea id='with-lettrics' class='lettrify'></textarea>

Whatever amount you populate in `#lettrics-characters-available` will be taken
as the limit. It will automatically update when the page is loaded if there is
already text in the textarea.

This creates a reasonable degradaton in case javascript is not available. The
number will not adjust, but it will state the overall limit to the field.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Please be sure to test any new features and to run the current test suite with
RSpec.

This project rocks and uses MIT-LICENSE.
