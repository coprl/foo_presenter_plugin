module Coprl
  module Presenters
    module Plugins
      module Foo
        module WebClientComponents
          def render_foo(comp,render:, components:, index:)
            view_dir = File.join(__dir__, '../../../../../../..', 'views', 'components')
            render.call :erb, :foo, views: view_dir,
                        locals: {comp: comp,
                        components: components, index: index}
          end
          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_foo(_pom, render:)
            view_dir = File.join(__dir__, '../../../../../../..', 'views', 'components')
            render.call :erb, :foo_header, views: view_dir
          end
        end
      end
    end
  end
end
