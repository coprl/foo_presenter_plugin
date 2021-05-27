require 'coprl/presenters/dsl/components/actions/base'


module Coprl
  module Presenters
    module Plugins
      module Foo
          class FooAction < DSL::Components::Actions::Base
            def initialize(**attribs_, &block)
              super(type: :foo_action, **attribs_, &block)
            end
        end
      end
    end
  end
end
