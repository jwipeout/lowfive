module Lowfive
  module Devise
    module Helpers
      module RequestSpecHelper
        include Warden::Test::Helpers

        def self.included(base)
          base.before(:each) { Warden.test_mode! }
          base.after(:each) { Warden.test_reset! }
        end

        def log_in(resource)
          login_as(resource, scope: warden_scope(resource))
        end

        def log_out(resource)
          logout(warden_scope(resource))
        end

        private

        def warden_scope(resource)
          resource.class.name.underscore.to_sym
        end
      end
    end
  end
end
