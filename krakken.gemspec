Gem::Specification.new do |s|
  s.name        = 'krakken'
  s.version     = '0.1.1'
  s.summary     = "Config file parser and generator"
  s.description = "Krakken is able to parse files into a hash, and write a hash to a file. It supports comments started with '#' when parsing, and outputs in the format of '[key]=[value]'"
  s.authors     = ["Sam Sheffres"]
  s.email       = 'samsheff@icloud.com'
  s.files       = ["lib/krakken.rb"]
  s.homepage    = 'https://github.com/samsheff/krakken'
  s.platform    = Gem::Platform::RUBY
  s.require_paths << 'lib'
end
