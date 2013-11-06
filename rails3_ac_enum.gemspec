# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails3_ac_enum/version'

Gem::Specification.new do |spec|
  spec.name          = "rails3_ac_enum"
  spec.version       = Rails3AcEnum::VERSION
  spec.authors       = ["Terry Tai"]
  spec.email         = ["poshboytl@gmail.com"]
  spec.description   = %q{Let ActiveRecord::Base#enum work for Rails 3}
  spec.summary       = %q{Love the ActiveRecord::Base#enum https://github.com/rails/rails/commit/db41eb8a6ea88b854bf5cd11070ea4245e1639c5#commitcomment-4496447.So want use it in Rails 3.}
  spec.homepage      = "http://terrytai.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
