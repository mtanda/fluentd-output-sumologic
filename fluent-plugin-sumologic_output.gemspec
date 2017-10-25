# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-sumologic_output"
  gem.version       = "0.0.6"
  gem.authors       = ["Steven Adams"]
  gem.email         = ["stevezau@gmail.com"]
  gem.description   = %q{Output plugin to SumoLogic HTTP Endpoint}
  gem.summary       = %q{Output plugin to SumoLogic HTTP Endpoint}
  gem.homepage      = "https://github.com/SumoLogic/fluentd-output-sumologic"
  gem.license       = "Apache-2.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.has_rdoc      = false

  gem.required_ruby_version = '>= 2.0.0'

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_runtime_dependency "fluentd"
  gem.add_development_dependency 'test-unit', '~> 3.1.0'
end
