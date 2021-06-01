lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foo_presenter_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "foo_presenter_plugin"
<<<<<<< HEAD
  spec.version       = '0.0.1'
  spec.authors       = ["Rx"]
  spec.email         = ["russell@russelledens.net"]
=======
  spec.version = FooPresentersPlugin::Version::VERSION
  spec.authors       = ["Russell Edens"]
  spec.email         = ["rx@voomify.com"]
>>>>>>> master

  spec.summary       = %q{foo presenter plugin.}
  spec.homepage      = 'http://github.com/Rx/foo_presenters_plugin'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
