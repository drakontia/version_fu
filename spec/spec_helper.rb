$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require "version_fu"
require "rspec"
require 'factory_girl_rails'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.order = "random"
  config.include FactoryGirl::Syntax::Methods
  config.before(:suite) do
    FactoryGirl.find_definitions
  end
end
