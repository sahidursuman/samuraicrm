$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai-core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["Alvin Kato J.R."]
  s.email       = ["alvinkatojr@gmail.com"]
  s.homepage    = "http://samurails.com"
  s.summary     = "Core features of Samurai CRM"
  s.description = "Core features of Samurai CRM"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files = Dir[""]
  s.add_dependency "rails", ">= 4.2.7", "< 4.2.9"
  s.add_dependency "sass-rails"
  s.add_dependency "boostrap-sass"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "devise"
  s.add_dependency "cancan"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "database_cleaner"
end
