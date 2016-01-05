$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mtdevise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|

	s.name        = "mtdevise"
	s.version     = Mtdevise::VERSION
	s.authors     = ["BradPotts"]
  s.email       = ["brad.potts@phcnetworks.net"]
	s.homepage    = "http://www.phcnetworks.net"
	s.summary     = "Multi-Tenant Rails Engine Using Devise."
  s.description = "mtdevise adds a multi-tenancy authetication system to your ruby on rails app. For documentation and information see our Github page - https://github.com/PHCNetworks/multi-tenancy-devise/"

	s.license     = "MIT"
	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
	s.test_files = Dir["spec/**/*"]

	# Main Rails & DB
	s.add_dependency 'rails'
	s.add_dependency 'pg', '~> 0.18.4'

	# Authetication and Multi-Tenancy
	s.add_dependency 'devise', '~> 3.5', '>= 3.5.3'
	s.add_dependency 'houser', '~> 2.0'
	s.add_dependency 'simple_form', '~> 3.2', '>= 3.2.1'
	s.add_dependency 'simple_token_authentication', '~> 1.11'

	# Omniauth Authetication
	s.add_dependency 'omniauth-facebook'
	s.add_dependency 'omniauth-google-oauth2'
	s.add_dependency 'omniauth-twitter'
	s.add_dependency 'omniauth-instagram'
	s.add_dependency 'omniauth-github'

	# UI and Frontend Elements
	s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	s.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	s.add_dependency 'font-awesome-rails', '~> 4.5'
	s.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	s.add_dependency 'rolify', '~> 5.0'
	s.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

	# s.add_dependency 'pry', '~> 0.10.3'
	# s.add_dependency 'pry-nav', '~> 0.2.4'

	s.add_development_dependency 'minitest', '~> 5.8', '>= 5.8.3'
	s.add_development_dependency 'simplecov', '~> 0.10.0'
	s.add_development_dependency 'coveralls', '~> 0.8.9'

	s.add_development_dependency 'mailcatcher', '~> 0.6.2'
	s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
	s.add_development_dependency 'database_cleaner'
	s.add_development_dependency 'shoulda-matchers'
	s.add_development_dependency 'factory_girl'
	s.add_development_dependency 'rspec-rails'
	s.add_development_dependency 'capybara'

	s.add_development_dependency 'quiet_assets'
	s.add_development_dependency 'letter_opener'
	s.add_development_dependency 'pry'

end