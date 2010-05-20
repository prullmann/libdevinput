require 'rubygems'
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = "libdevinput"
  s.version = "0.0.1"
  s.author = "Peter Rullmann"
  s.email = "peter @nospam@ p4n.net"
  s.summary = "A ruby library to read input device events on linux systems"
  s.description = "This ruby library makes it easy to read events from linux event devices. These device files, residing in /dev/input/ get created for a number of different human input devices like keyboards, mice, touchscreens, joysticks and the like."
  s.files = FileList['lib/*.rb', 'examples/*.rb', '[A-Z]*'].to_a
  s.homepage = "http://github.com/prullmann/libdevinput"
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
  puts 'generated latest version'
end

