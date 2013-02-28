$:.push File.expand_path("../lib", __FILE__)
require "rspec/given/version"

Gem::Specification.new do |s|
  s.name = 'rspec-given'
  s.version = RSpec::Given::VERSION
  s.summary = "Given/When/Then Specification Extensions for RSpec."
  s.description = <<EOF
Given is an RSpec extension that allows explicit definition of the
pre and post-conditions for code under test.
EOF
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.rdoc_options = [
    '--line-numbers', '--inline-source',
    '--main' , 'README.md',
    '--title', 'RSpec Given Extensions'
  ]

  s.add_dependency("rspec", ">= 2.13")
  s.add_dependency("sorcerer", ">= 0.3.7")

  s.add_development_dependency("bluecloth")
  s.add_development_dependency("rdoc", "> 2.4.2")
  s.add_development_dependency("ghpreview", ">= 0.0.1")

  s.required_ruby_version = '>= 2.0.0'

  s.author = "Jim Weirich"
  s.email = "jim.weirich@gmail.com"
  s.homepage = "http://github.com/jimweirich/rspec-given"
  s.rubyforge_project = "given"
end
