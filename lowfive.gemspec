# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lowfive/version'

Gem::Specification.new do |spec|
  spec.name          = 'lowfive'
  spec.version       = Lowfive::VERSION
  spec.authors       = ['Josh Cavin']
  spec.email         = ['josh@dreamingblue.com']

  spec.summary       = 'Devise login and logout helpers for rspec'
  spec.description   = 'Rspec Devise login and logout helpers.'
  spec.homepage      = 'https://github.com/jwipeout/lowfive'
  spec.license       = 'MIT'

  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'devise', '~> 4.3.0'
  spec.add_dependency 'rails', '~> 5.1.2'
  spec.add_dependency 'rspec-rails', '~> 3.6.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'capybara', '~> 2.14'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.8.0'
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.49.1'
  spec.add_development_dependency 'sqlite3', '~> 1.3.13'
end
