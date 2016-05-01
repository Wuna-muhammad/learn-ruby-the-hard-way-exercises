# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name           = "study_drill"
  spec.version        = '1.0'
  spec.authors        = ["Bernard Pietraga"]
  spec.email          = ["bernard.pietraga@gmail.com"]
  spec.summary        = %q{Study drill form exercise 46.}
  spec.description    = %q{Own simple gem, prints: This is study drill.}
  spec.license        = "MIT"

  spec.files          = ['lib/study_drill.rb']
  spec.executables    = ['study_drill']
  spec.test_files     = ['tests/test_study_drill.rb']
  spec.require_paths  = ["lib"]
  post_install_message= "Thank you for installing this study drill gem!"
end
