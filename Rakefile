# Rakefile for rubypants  -*-ruby-*-
require 'rake/rdoctask'
require 'rake/testtask'
require 'rake/gempackagetask'


desc "Run all the tests"
task :default => [:test]

desc "Do predistribution stuff"
task :predist => [:doc]


Rake::TestTask.new(:test) do |t|
  t.pattern = "#{File.dirname(__FILE__)}/test/all.rb"
  t.verbose = true
end
Rake::Task['test'].comment = "Run all rubypants tests"

desc "Make an archive as .tar.gz"
task :dist => :test do
  system "darcs dist -d rubypants#{get_darcs_tree_version}"
end


desc "Generate RDoc documentation"
Rake::RDocTask.new(:doc) do |rdoc|
  rdoc.options += %w(--line-numbers --inline-source --all)
  rdoc.rdoc_files.include 'README'
  rdoc.rdoc_files.include 'lib'
end

Rake::GemPackageTask.new(eval(File.read("rubypants.gemspec"))) { |pkg| }
