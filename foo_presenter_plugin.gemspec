lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foo_presenter_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "foo_presenter_plugin"
  spec.version = FooPresentersPlugin::Version::VERSION
  spec.authors       = ["Russell Edens"]
  spec.email         = ["russell@voomify.com"]
  spec.summary       = %q{A sample COPRL presenters plugin}
  spec.homepage      = 'http://github.com/Rx/foo_presenters_plugin'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
