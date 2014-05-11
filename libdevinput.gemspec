# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "libdevinput"
  spec.version       = "0.0.2"
  spec.author           = "Peter Rullmann"
  spec.email            = "peter @nospam@ p4n.net"
  spec.summary          = "A ruby library to read input device events on linux systems"
  spec.description      = "This ruby library makes it easy to read events from linux event devices. These device files, residing in /dev/input/ get created for a number of different human input devices like keyboards, mice, touchscreens, joysticks and the like."

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
