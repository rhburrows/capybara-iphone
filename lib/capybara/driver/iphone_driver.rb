require 'capybara/rack_test/driver'

module Capybara::Driver
  class Iphone < RackTest
    USER_AGENT = "Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en)" +
      " AppleWebKit/420+ (KHTML, like Gecko) Version/3.0" +
      " Mobile/1A543a Safari/419.3"

    def env
      super.merge("HTTP_USER_AGENT" => USER_AGENT)
    end
  end
end
