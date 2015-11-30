# -*- encoding: utf-8 -*-
# $:.push File.expand_path("../lib", __FILE__)
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "play_billing"

Gem::Specification.new do |s|
  s.name        = "play_billing_validator"
  s.authors     = ["Amro Mousa"]
  s.email       = ["amromousa@gmail.com"]
  s.homepage    = "http://github.com/amro/play_billing_validator"
  s.summary     = %q{Validates Google Play In-app Billing transactions}
  s.description = %q{Validates Google Play In-app Billing transactions}
  s.license     = "MIT"
  s.version     = PlayBilling::VERSION
  s.platform    = Gem::Platform::RUBY
  s.rubyforge_project = "play_billing_validator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
