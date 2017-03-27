# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path('../lib/nullify-attr/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'nullify-attr'
  s.version         = NullifyAttr::VERSION
  s.author          = 'Yaroslav Konoplov'
  s.email           = 'eahome00@gmail.com'
  s.summary         = 'Conditionally nullify attributes.'
  s.description     = 'Conditionally nullify attributes.'
  s.homepage        = 'https://github.com/yivo/nullify-attr'
  s.license         = 'MIT'

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'activesupport', '>= 3.0', '< 6.0'
  s.add_dependency 'activerecord',  '>= 3.0', '< 6.0'
end
