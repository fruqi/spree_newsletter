# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_newsletter'
  s.version     = '0.1'
  s.summary     = 'Add creating newsletter functionality for Admin'
  s.description = 'Add creating newsletter functionality for Admin'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Amrta Faruqi'
  s.email     = 'amrta@faruqi@gmail.com'
  # s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3.4'
  s.add_dependency 'kaminari'
  # s.add_dependency 'roadie', '~> 3.0.1'
  # s.add_dependency 'roadie-rails', '~> 1.0.3'


  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
