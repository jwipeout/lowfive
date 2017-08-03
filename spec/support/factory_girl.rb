RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  FactoryGirl.find_definitions if FactoryGirl.factories.count == 0
end
