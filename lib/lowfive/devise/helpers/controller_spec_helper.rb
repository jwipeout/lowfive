module Lowfive
  module Devise
    module Helpers
      module ControllerSpecHelper
        def log_in(resource)
          sign_in(resource)
        end

        def log_out(resource)
          sign_out(resource)
        end
      end
    end
  end
end
