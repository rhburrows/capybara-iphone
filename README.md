# capybara-iphone

* http://github.com/rhburrows/capybara-iphone

## Description

Capybara-iphone is a simple driver for capybara that identifies itself
as an iphone. It can be used to test out the mobile version of your
site through cucumber (given that you are using the user agent to
decide whether or not to render the mobile version).

The current version of capybara-iphone is just an extended rack-test
driver that provides a different user-agent string. In the future it
might be extended to handle some of the iphone specific javascript
calls, but not at this time.

## Installation

    gem install capybara-iphone

## Usage

First require the library:

    require 'capybara/iphone'

In order to make use of the capybara-iphone driver you will have to
first register it with capybara. If you are using capybara version
0.4.0 you can register the iphone driver using:

    Capybara.register_driver(:iphone) do |app|
        Capybara::Driver::Iphone.new(app)
    end

If you are using version 0.3.9 this step is not necessary as the class
name will be inferred from the driver name. I haven't tested this code
with any other version of Capybara.

To tell capybara to use the iphone driver you must set the current
driver:

    Capybara.current_driver = :iphone

If you would like to use a tag (i.e. `@iphone`) to specify tests in
cucumber that will use the iphone driver you can enter something like
the following in your cucumber support files:

    Before('@iphone') do
        Capybara.current_driver = :iphone
    end

## Helping with capybara-iphone

If you find any issues with capybara or have something you would like
added feel free to file and issue in Github (though I'm not sure how
much time I'll be dedicating to it).

If you would like to fix any bugs or add something to the project just
fork it and send me a pull request.

## Contact

Ryan Burrows: rhburrows@gmail.com
