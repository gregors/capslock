# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capslock/version'

Gem::Specification.new do |spec|
  spec.name          = 'capslock'
  spec.version       = Capslock::VERSION
  spec.authors       = ['Gregory Ostermayr']
  spec.email         = ['<gregory.ostermayr@gmail.com>']

  spec.summary       = %q{ Map the CapsLock key to Ctrl easily.}
  spec.description = %q{ Supports only Linux so far. }
  #spec.description = %q{Let Ruby handle changing registry entries for you.}
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/gregors/capslock'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = 'capslock' 
  spec.require_paths = ['lib']

  spec.add_dependency 'os', '~> 0.9.6'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
