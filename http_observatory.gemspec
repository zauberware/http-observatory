$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "http_observatory/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "http_observatory"
  s.version     = HttpObservatory::VERSION
  s.authors     = ["Simon Franzen"]
  s.email       = ["simon@zauberware.com"]
  s.homepage    = "https://www.zauberware.com"
  s.summary     = "Summary of HttpObservatory."
  s.description = "Description of HttpObservatory."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "faraday"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "webmock"
end
