require_relative 'foo_component'

module Coprl
  module Presenters
    module Plugins
      module Foo
        # Components add new methods to the POM component hierarchy. They should add a component object to the
        # POM component stream. These components are the declarative instructions that are used to render a client.
        # POM components require corresponding views templates and JS that render them.
        # Name this method whatever you want.
        module DSLComponents
          def foo(random_fact, **attributes, &block)
            self << Foo::FooComponent.new(random_fact, parent: self, **attributes, &block)
          end
        end
      end
    end
  end
end
