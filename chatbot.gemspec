# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chatbot/version'

Gem::Specification.new do |spec|
  spec.name          = "chatbot"
  spec.version       = ChatBot::VERSION
  spec.authors       = ["Rohit Kumar"]
  spec.email         = ["rohit.kumar@rutgers.edu"]
  spec.description   = "A simple gem to make writing groupme bots easier"
  spec.summary       = "A simple gem to make writing groupme bots easier"
  spec.homepage      = "http://www.github.com/ronandi/chatbot"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "factory_girl"
end
