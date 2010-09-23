# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)
require 'rubypants/version'

spec = Gem::Specification.new do |s|
  s.name = 'rubypants'
  s.version = RubyPants::VERSION
  s.summary = "RubyPants is a Ruby port of the smart-quotes library SmartyPants."
  s.description = <<-EOF
RubyPants is a Ruby port of the smart-quotes library SmartyPants.

The original "SmartyPants" is a free web publishing plug-in for
Movable Type, Blosxom, and BBEdit that easily translates plain ASCII
punctuation characters into "smart" typographic punctuation HTML
entities.
  EOF
  s.files = FileList['lib/**/*rb', 'README', 'Rakefile'].to_a
  s.test_files = Dir.glob('test/*.rb')
  s.extra_rdoc_files = ["README"]
  s.rdoc_options = ["--main", "README"]
  s.rdoc_options.concat ['--line-numbers', '--inline-source', '--all']
  s.require_path = 'lib'
  
  s.authors = ["Christian Neukirchen", "Holger Just"]
end
