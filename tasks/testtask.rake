require 'rake/testtask'

Rake::TestTask.new('units') do |t|
  t.pattern = 'test/*_test.rb'
  t.warning = true
  t.verbose = true
  desc "test this"
end

desc "Run all tests"
task :test => [ :units ]

task :default => [ :test ]
