
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib")
require 'armadillo_to_zebra_google_juice_test'

Gem::Specification.new do |s|
  s.name        = 'armadillo_to_zebra_google_juice_test'
  s.version     = ArmadilloToZebraGoogleJuiceTest::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{armadillo_to_zebra_google_juice_test TODO: Write a gem summary}
  s.description = %q{armadillo_to_zebra_google_juice_test TODO: Write a gem description}

  s.files         = `git ls-files`.split("
")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("
")
  s.executables   = `git ls-files -- bin/*`.split("
").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #s.add_dependency('some_gem', '>= 1.0.0')
end
