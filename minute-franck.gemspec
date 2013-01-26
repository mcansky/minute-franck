$LOAD_PATH.unshift 'lib'
require File.expand_path('../lib/minute-franck/version', __FILE__)
 
Gem::Specification.new do |s|
  s.name              = "minute-franck"
  s.version           = MinuteFranck::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Simple tool to add entries to a freckle account"
  s.homepage          = "http://github.com/mcansky/minute-franck"
  s.email             = "riboulet+opensource@gmail.com"
  s.authors           = [ "Thomas Riboulet" ]
  s.has_rdoc          = false
 
  s.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  s.files             = %w( README.md LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")
 
  s.description       = <<desc
  Feed me.
desc
end
