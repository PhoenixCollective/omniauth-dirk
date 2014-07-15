# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth-dirk/version'

Gem::Specification.new do |s|
  s.name        = 'omniauth-dirk'
  s.version     = OmniAuth::Dirk::VERSION
  s.authors     = ['Dirk Sierd de Vries']
  s.email       = ['dirksierd@me.com']
  s.homepage    = 'https://github.com/PhoenixCollective/omniauth-dirk'
  s.summary     = %q{OmniAuth strategy for Dirk}
  s.description = %q{OmniAuth strategy for Dirk}
  s.license     = "MIT"

  s.rubyforge_project = 'omniauth-dirk'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
end
