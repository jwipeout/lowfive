RSpec.configure do |config|
  config.include Lowfive::Devise::Helpers::RequestSpecHelper, type: :request

  config.include Lowfive::Devise::Helpers::RequestSpecHelper, type: :feature

  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Lowfive::Devise::Helpers::ControllerSpecHelper, type: :controller
end
