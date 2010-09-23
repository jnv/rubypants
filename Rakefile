# Rakefile for rubypants  -*-ruby-*-
require 'rake/rdoctask'
require 'rake/gempackagetask'


desc "Run all the tests"
task :default => [:test]

desc "Do predistribution stuff"
task :predist => [:doc]


desc "Run all the tests"
task :test do
  ruby 'test/test_rubypants.rb'
end

desc "Make an archive as .tar.gz"
task :dist => :test do
  system "darcs dist -d rubypants#{get_darcs_tree_version}"
end


desc "Generate RDoc documentation"
Rake::RDocTask.new(:doc) do |rdoc|
  rdoc.options << '--line-numbers --inline-source --all'
  rdoc.rdoc_files.include 'README'
  rdoc.rdoc_files.include 'rubypants.rb'
end

Rake::GemPackageTask.new(eval(File.read("rubypants.gemspec"))) { |pkg| }
