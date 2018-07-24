lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shuttlerock_shared_config/version"

Gem::Specification.new do |spec|
  spec.name          = 'shuttlerock_shared_config'
  spec.version       = ShuttlerockSharedConfig::VERSION
  spec.authors       = ['ElseThen']
  spec.email         = ['tbvokh@gmail.com']

  spec.summary       = "Update shared config."
  spec.description   = "Update shared config for Shuttlerock's projects."
  spec.homepage      = 'https://github.com/Shuttlerock/shuttlerock_shared_config'
  spec.license       = 'MIT'
  spec.files         = Dir['{**/}{.*,*}'].select { |path| File.file?(path) }
  spec.bindir        = "exe"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
