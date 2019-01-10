lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shuttlerock_shared_config/version'

Gem::Specification.new do |spec|
  spec.name          = 'shuttlerock_shared_config'
  spec.version       = ShuttlerockSharedConfig::VERSION
  spec.authors       = ['ElseThen']
  spec.email         = ['tbvokh@gmail.com']

  spec.summary       = 'Update shared config.'
  spec.description   = "Update shared config for Shuttlerock's projects."
  spec.homepage      = 'https://github.com/Shuttlerock/shuttlerock_shared_config'
  spec.license       = 'MIT'
  spec.files         = `git ls-files lib`.split(/\s+/)
  spec.bindir        = 'exe'

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_dependency 'rake', '~> 12.3'
  spec.add_dependency 'rubocop', '~> 0.62'
  spec.add_development_dependency 'rspec', '~> 3.8'
end
