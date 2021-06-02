module Coprl
  module Presenters
    module Plugins
      module Foo
        # Helpers are added to all POM in the system automatically when the plugin is included on the POM or globally.
        module DSLHelpers
          # Add your methods here
          def random_fact
            "https://en.wikipedia.org/wiki/Special:Randompage"
          end
        end
      end
    end
  end
end
