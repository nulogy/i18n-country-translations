$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "i18n_country_translations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "i18n-country-translations"
  s.version     = I18nCountryTranslations::VERSION
  s.authors     = ["Brian McQuay"]
  s.email       = ["brian@onomojo.com"]
  s.homepage    = "https://github.com/onomojo/i18n-country-translations"
  s.summary     = "I18n Country Translations"
  s.description = "The purpose of this gem is to simply provide country translations. The gem is intended to be easy to combine with other gems that require i18n country translations so we can have common i18n country translation gem."

  s.files        = Dir.glob("lib/**/*") + Dir.glob("rails/locale/**/*") +
                   %w(README.rdoc MIT-LICENSE)
  s.test_files = Dir["test/**/*"]
  s.require_path = 'lib'
  s.platform     = Gem::Platform::RUBY

  s.add_dependency 'i18n', '~> 1.4'

  s.add_runtime_dependency 'railties', '>= 5.2', '< 6.1'
  s.add_runtime_dependency 'sprockets', '3.7.2'
  s.add_runtime_dependency 'sprockets-rails', '3.2.1'

  s.add_development_dependency 'appraisal', '~> 2.3'
  s.add_development_dependency 'rails', '>= 5.2', '< 6.1'
  s.add_development_dependency 'rspec-rails', '~> 4.0'
  s.add_development_dependency 'i18n-spec', '~> 0.6'
  s.add_development_dependency 'nokogiri', '~> 1.10'
  s.add_development_dependency 'webmock', '~> 3.9'
  s.add_development_dependency "simplecov", '~> 0.19'

  s.licenses = ['MIT', 'GPL-3.0']
end
