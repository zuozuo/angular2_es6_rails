$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "angular2_es6_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "angular2_es6_rails"
  s.version     = Angular2Es6Rails::VERSION
  s.authors     = ["zuozuo"]
  s.email       = ["zzhattzzh@126.com"]
  s.homepage    = "https://github.com/zuozuo"
	s.summary     = "Angular2 setup for Rails and ES6"
	s.description = "This gem provide setup for writing angular2 app with rails and ES6"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "browserify-rails"

  s.add_development_dependency "sqlite3"
end
