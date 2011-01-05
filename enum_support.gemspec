# -*- encoding: utf-8 -*-

Gem::Specification.new do |spec|
    spec.name        = 'enum_support'
    spec.version     = '1.0'
    spec.summary     = 'Model enumerations for Rails 3.'
    spec.description = 'Provides rudimentary enumeration support for Rails 3.'

    spec.required_ruby_version     = '>= 1.8.6'
    spec.required_rubygems_version = '>= 1.3.5'

    spec.author   = 'Gavin Mulligan'
    spec.email    = 'd3r1v3d@gmail.com'
    spec.homepage = 'http://github.com/d3r1v3d/rails3-enum-support'

    spec.extra_rdoc_files = ['README.rdoc']
    spec.files            = %w{README.rdoc} + Dir['lib/**/*.rb']
    spec.require_paths    = %w{lib}
end
