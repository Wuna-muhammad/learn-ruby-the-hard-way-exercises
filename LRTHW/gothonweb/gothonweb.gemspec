# coding: utf-8
lib = File.expand_path('../lib', _FILE_)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "GOTHONWEB"
  spec.version       = '1.0'
  spec.authors       = ["NA"]
  spec.email         = ["NA"]
  spec.summary       = %q{Exercise 49, 50, 51, 52 from Learn Ruby The Hard Way.}
  spec.description   = %q{Exercise 49, 50, 51, 52 from Learn Ruby The Hard Way
                          by Zed Shaw. Webpage on sinatra framework.}
  spec.homepage      = "NA"
  spec.licence       = "MIT"

  spec.files         = ['lib/gothonweb.rb']
  spec.executables   = ['bin/app.rb']
  spec.test_files    = ['test/test_gothonweb.rb']
  spec.require_paths = ["lib"]
end
