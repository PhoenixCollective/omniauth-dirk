$:.push File.expand_path('../lib', __FILE__)
require 'omniauth-dirk/version'

Gem::Specification.new do |s|
  s.name        = 'omniauth-dirk'
  s.version     = OmniAuth::Dirk::VERSION
  s.authors     = ['Dirk Sierd de Vries']
  s.email       = ['dirksierd@me.com']
  s.homepage    = 'https://github.com/dirksierd/omniauth-dirk'
  s.summary     = 'OmniAuth strategy for Dirk'
  s.description = 'OmniAuth strategy for Dirk'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.6'
end
