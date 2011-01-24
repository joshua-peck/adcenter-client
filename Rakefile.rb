# -*- ruby -*-
load 'tasks/testtask.rake'
load 'tasks/doctask.rake'

require 'rubygems'
require 'hoe'
require 'rubyforge'

# Hoe.plugin :compiler
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :inline
# Hoe.plugin :inline
# Hoe.plugin :racc
Hoe.plugin :rubyforge
# Hoe.plugin :rubyforge

Hoe.spec 'adcenter-client' do |h|
  h.summary = "SOAP client for MSN adCenter"
  h.email = "jmp@joshpeck.org"
  h.author = "Josh Peck"
  h.url = "http://bleechack.github.com/adcenter-client/"
  h.description = h.paragraphs_of('README.txt', 1..2).join("\n\n") 
  h.changes = h.paragraphs_of('History.txt', 2..3).join("\n\n") 
  h.remote_rdoc_dir = 'adcenter-client' 
  h.developer('Josh Peck', 'jmp@joshpeck.org')
  h.rubyforge_name = 'adcenter-client'
  h.extra_deps << 'soap4r'
  h.extra_deps << 'hoe'
end

# vim: syntax=ruby
