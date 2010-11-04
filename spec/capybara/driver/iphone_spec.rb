require 'spec_helper'

module Capybara::Driver

  describe Iphone do
    before do
      @driver = TestSessions::Iphone.driver
    end

    it_should_behave_like "driver"
    it_should_behave_like "driver with header support"
    it_should_behave_like "driver with status code support"
    it_should_behave_like "driver with cookies support"
    it_should_behave_like "driver with infinite redirect detection"
  end
end
