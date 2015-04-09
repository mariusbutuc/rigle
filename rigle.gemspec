# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rigle/version'

Gem::Specification.new do |spec|
  spec.name          = 'rigle'
  spec.version       = Rigle::VERSION
  spec.authors       = ['Marius Butuc']
  spec.email         = ['marius.butuc@gmail.com']

  spec.summary       = 'A Rack-based Web Framework, slightly Rails-like'
  spec.description   = 'A Rack-based Web Framework, but with extra awesome. Slightly Rails-like!'
  spec.homepage      = 'https://github.com/mariusbutuc/rigle'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',                    '~> 1.9'
  spec.add_development_dependency 'rake',                       '~> 10.0'
  spec.add_development_dependency 'rack-test',                  '~> 0.6'
  spec.add_development_dependency 'pry',                        '~> 0.10'

  spec.add_runtime_dependency 'rack',                           '~> 1.6'
end
