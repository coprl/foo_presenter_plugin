module Coprl
  module Presenters
    module Plugins
      module Foo
        module WebClientComponents

          def view_dir_foo(pom)
            File.join(__dir__, '../../../../../../..', 'views', 'components')
          end

          def render_foo(comp,render:, components:, index:)
            render.call :erb, 'foo',
                        views: view_dir_foo(comp),
                        locals: {comp: comp,
                        components: components, index: index}
          end
          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_foo(pom, render:)
            render.call :erb, 'foo_header' , views: view_dir_foo(pom)
          end
        end
      end
    end
  end
end
