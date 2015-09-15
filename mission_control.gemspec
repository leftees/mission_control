# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mission_control/version'

Gem::Specification.new do |spec|
  spec.name          = "mission_control"
  spec.version       = MissionControl::VERSION
  spec.authors       = ['Ryan Cammer']
  spec.email         = ['ryancammer@gmail.com']

  spec.summary       = %q{Mission Controll enables you to control your Martian rovers via text file input.}
  spec.homepage      = 'https://github.com/ryancammer/mission_control'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_development_dependency 'aruba', '~> 0.9'
  spec.add_development_dependency 'cucumber', '~> 2.1'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'flog', '~> 4.3'
  spec.add_development_dependency 'rubocop', '~> 0.33'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~> 0.10'
end
