# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'comfy_pg_search/version'

Gem::Specification.new do |spec|
  spec.name          = "comfy_pg_search"
  spec.version       = ComfyPgSearch::VERSION
  spec.authors       = ["Ricardo Keigo Andrade"]
  spec.email         = ["papeldeorigami@googlemail.com"]
  spec.summary       = %q{PostgreSQL full text search for the Comfortable Mexican Sofa CMS}
  spec.description   = %q{Uses pg_search gem to introduce full text search on CMS pages. Notice that pg_search uses PostgreSQL built-in functionality so this gem is not compatible with other database backends}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
