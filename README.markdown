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

Use the `.lettrify` and `data-counter` tags in your markup:

    You may enter <span id="my-counter">4000</span> characters.
    <textarea class='lettrify' data-counter='#my-counter'></textarea>

Whatever amount you populate in the counter will be taken as the limit. It will
automatically update when the page is loaded if there is already text in the
lettrified textarea.

This creates a reasonable degradation in case javascript is not available. The
number will not adjust, but it will state the overall limit to the field.

When the user exceeds the designated limit, a `.text-error` class will be added
to the counter. In [Bootstrap 2.3](http://getbootstrap.com/2.3.2/base-css.html#typography), this turns the text red by default.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make your changes: Please run the tests and, in most cases, add a failing
   test of your own. To run the tests (you will need Firefox version < 29):

    bundle install
    rspec ./spec

4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

Please be sure to test any new features and to run the current test suite with
RSpec.

This project rocks and uses MIT-LICENSE.
