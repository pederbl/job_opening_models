# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "job_opening_models/version"

Gem::Specification.new do |s|
  s.name        = "job_opening_models"
  s.version     = JobOpeningModels::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peder Linder"]
  s.email       = ["pederbl@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{hej}
  s.description = %q{hej}

  s.rubyforge_project = "job_opening_models"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
