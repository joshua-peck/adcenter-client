require 'rake/rdoctask'

Rake::RDocTask.new(:doc) do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
  rd.rdoc_dir = "docs"
end
