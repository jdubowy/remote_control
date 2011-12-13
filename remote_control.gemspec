# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "remote_control/version"

Gem::Specification.new do |s|
  s.name        = 'remote_control'
  s.version     = RemoteControl::VERSION
  s.authors     = ["Joel Dubowy"]
  s.email       = 'jdubowy@gmail.com'
  s.date        = '2011-12-12'
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = "Tools for interacting with remove servers"

  s.rubyforge_project = "remote_control"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'net/ssh'
  s.add_runtime_dependency 'net/sftp'
  # @todo: do I place executable dependencies here?
  s.add_runtime_dependency 'optparse'
  s.add_runtime_dependency 'highline'

  # s.add_development_dependency "rspec"
end