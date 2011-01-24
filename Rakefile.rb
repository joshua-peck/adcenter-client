# -*- ruby -*-
load 'tasks/testtask.rake'
load 'tasks/doctask.rake'

require 'rubygems'
require "rake/gempackagetask"
require 'hoe'

# Hoe.plugin :compiler
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :inline
# Hoe.plugin :inline
# Hoe.plugin :racc
# Hoe.plugin :rubyforge
# Hoe.plugin :rubyforge

Hoe.spec 'adcenter_client' do
  developer('Josh Peck', 'jmp@joshpeck.org')
  name = "adcenter-client"
  version = "7.0.0"
  author = "Josh Peck"
  email = "jmp@joshpeck.org"
  homepage = "http://bleechack.github.com/adcenter-client/"
  platform = Gem::Platform::RUBY
  summary = "provides access to the Microsoft adCenter SOAP API"
  files = FileList["{bin,lib}/**/*"].to_a
  require_path = "lib"
  autorequire = "soap4r"
  test_files = FileList["{test}/**/*test.rb"].to_a
  has_rdoc = true
  extra_rdoc_files = [ "README.txt", 'History.txt' ]
  rubyforge_project = 'adcenter-client'
  # self.rubyforge_name = 'adcenter_clientx' # if different than 'adcenter_client'
end

# spec = Gem::Specification.new do |s| 
#   s.name = "adcenter-client"
#   s.version = "7.0.0"
#   s.author = "Josh Peck"
#   s.email = "jmp@joshpeck.org"
#   s.homepage = "hhttps://github.com/bleechack/adcenter-client"
#   s.platform = Gem::Platform::RUBY
#   s.summary = "provides access to the Microsoft adCenter SOAP API"
#   s.files = FileList["{bin,lib}/**/*"].to_a
#   s.require_path = "lib"
#   s.autorequire = "soap4r"
#   s.test_files = FileList["{test}/**/*test.rb"].to_a
#   s.has_rdoc = true
#   s.extra_rdoc_files = [ "README.txt", 'History.txt' ]
#   s.rubyforge_project = 'adcenter-client'
#   # s.add_dependency("dependency", ">= 0.x.x")
# end
# 
# Rake::GemPackageTask.new(spec) do |pkg| 
#   pkg.need_tar = true 
# end 


# vim: syntax=ruby
