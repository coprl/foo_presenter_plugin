require_relative 'foo_action'

module Coprl
  module Presenters
    module Plugins
      module Foo
        # Event Actions are methods that appear inside an event block.
        # They do something on the (web) client and require code written for the client.
        # Name this actionJs method whatever you want
        # The data for this actionJs is rendered into the DOM using the file:
        #   web_client/components/actions/Foo_data.rb
        # The javascript that performs the actionJs is defined in the file:
        #   views/js/components/actions/Foo_action.js
        module DSLEventActions
          def foo_action(text, **attributes, &block)
            self << Foo::FooAction.new(text: text, parent: self, **attributes, &block)
          end
        end
      end
    end
  end
end
