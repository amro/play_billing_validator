# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "google_play"

Gem::Specification.new do |s|
  s.name        = "validate_google_play"
  s.authors     = ["Amro Mousa"]
  s.email       = ["amromousa@gmail.com"]
  s.homepage    = "http://github.com/amro/validate_google_play"
  s.summary     = %q{Validated Google Play In-app Billing v3 transactions}
  s.description = %q{Validates Google Play In-app Billing v3 transactions}
  s.license     = "MIT"
  s.version     = GooglePlay::VERSION
  s.platform    = Gem::Platform::RUBY
  s.rubyforge_project = "validate_google_play"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('multi_json', '>= 1.3.4')
end
