# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/blogengine/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-blogengine"
  spec.version       = Rack::Blogengine::VERSION
  spec.authors       = ["Benny Klotz"]
  spec.email         = ["benny.klotz92@gmail.com"]
  spec.description   = %q{Blogengine based on rack applications}
  spec.summary       = "#{spec.description}"
  spec.homepage      = "https://github.com/tak1n/rack-blogengine"
  spec.license       = "MIT"

  spec.post_install_message = 'Please report any issues at: ' \
      'https://github.com/tak1n/rack-blogengine/issues/new'

  # spec.cert_chain  = ['certs/benny1992.pem']
  # spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/

  spec.files         = File.read(File.expand_path('../MANIFEST', __FILE__)).split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10.3'
  spec.add_development_dependency "coveralls", '~> 0.7'
  spec.add_development_dependency "rack-test", '~> 0.6'
  spec.add_development_dependency 'minitest', '~> 5.3'
  spec.add_development_dependency 'minitest-reporters'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_runtime_dependency "rack", '~> 1.5'
  spec.add_runtime_dependency "pygments.rb", '~> 0.5'
  spec.add_runtime_dependency "nokogiri", '~> 1.6'
end
