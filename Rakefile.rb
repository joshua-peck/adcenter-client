# -*- ruby -*-
load 'tasks/testtask.rake'
load 'tasks/doctask.rake'

require 'rubygems'
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
  # self.rubyforge_name = 'adcenter_clientx' # if different than 'adcenter_client'
end

# vim: syntax=ruby
