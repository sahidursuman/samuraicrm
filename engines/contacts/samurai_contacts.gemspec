$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_contacts"
  s.version     = Samurai::Contacts::VERSION
  s.authors     = ["alvinkatojr"]
  s.email       = ["alvinkatojr@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Samurai::Contacts."
  s.description = "TODO: Description of Samurai::Contacts."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.8"

  s.add_dependency "deface"
end
