require 'bundler/setup'

require 'capybara/iphone'
require 'capybara/spec/driver'

alias :running :lambda

Capybara.default_wait_time = 0

Capybara.register_driver :iphone do |app|
  Capybara::Driver::Iphone.new(app)
end

module TestSessions
  Iphone = Capybara::Session.new(:iphone, TestApp)
end

RSpec.configure do |config|
  config.before do
    Capybara.configure do |config|
      config.default_selector = :xpath
    end
  end
end
