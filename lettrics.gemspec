$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lettrics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lettrics"
  s.version     = Lettrics::VERSION
  s.authors     = ["patrick mcelwee"]
  s.email       = ["pmm21@duke.edu"]
  s.cert_chain  = ['certs/patrickmcelwee.pem']
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
  s.description = %q{Dead-simple character count for textareas in Rails
                     app with javascript.}
  s.summary     = %q{Counts and displays characters in a textarea so users
                     do not enter more than the database can handle. for
                     use in Rails applications.}

  s.files = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.17"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.12.0"
  s.add_development_dependency "capybara", "~> 2.1.0"
  s.add_development_dependency "selenium-webdriver", "~> 2.25.0"
end
