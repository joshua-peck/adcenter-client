require 'rake/rdoctask'

META_FILES = %w[ README.txt TODO ]
Rake::RDocTask.new(:doc) do |rd|
  rd.main = "README.txt"
  rd.rdoc_files.include(META_FILES)
  rd.rdoc_files.include("lib/**/*.rb")
  rd.rdoc_dir = "doc"
end
