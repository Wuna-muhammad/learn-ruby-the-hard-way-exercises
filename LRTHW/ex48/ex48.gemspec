# coding: utf-8
lib = File.expand_path('../lib', _FILE_)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "EXERCISE 48"
  spec.version       = '1.0'
  spec.authors       = ["BERNARD PIETRAGA"]
  spec.email         = ["bernard.pietraga@gmail.com"]
  spec.summary       = %q{Exericise 48 form Zed Shaw book.}
  spec.description   = %q{Learn Ruby The Hard Way book 3rd edition.}
  spec.licence       = "MIT"

  spec.files         = ['lib/ex48.rb']
  spec.executables   = ['bin/lexicon.rb']
  spec.test_files    = ['test/test_lexicon.rb']
  spec.require_paths = ["lib"]
end
