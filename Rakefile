require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'


PKG_FILES = FileList[ '[a-zA-Z]*', 'dojo/**/*', 'lib/**/*']


spec = Gem::Specification.new do |s|
  s.name = "dojo_src"
  s.version = "1.4.1"
  s.author = "niquola"
  s.email = "niquola@gmail.com"
  s.executables << 'dojofy' 
  s.require_path = "lib"
  #s.homepage = ""
  s.platform = Gem::Platform::RUBY
  s.summary = "Gem packaged Dojo"
  s.files = PKG_FILES.to_a 
  s.has_rdoc = false
  s.extra_rdoc_files = ["README.rdoc"]
end


desc 'Turn this plugin into a gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Default Task"
task :default do 
  puts "default rake"
end
