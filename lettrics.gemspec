$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lettrics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lettrics"
  s.version     = Lettrics::VERSION
  s.authors     = ["patrick mcelwee"]
  s.email       = ["pmm21@duke.edu"]
  s.description = %q{dead-simple character count for textareas in rails
                     app with javascript.}
  s.summary     = %q{counts and displays characters in a textarea so users
                     do not enter more than the database can handle. for
                     use in rails applications.}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.17"
  s.add_dependency "coffee-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.12.0"
  s.add_development_dependency "capybara", "~> 2.1.0"
end
