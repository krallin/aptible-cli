source 'https://rubygems.org'

gem 'pry', github: 'fancyremarker/pry', branch: 'aptible'
gem 'activesupport', '~> 4.0'
gem 'win32-process', '~> 0.8.3' if Gem.win_platform?

group :test do
  gem 'webmock'
  gem 'codecov', require: false
end

# Specify your gem's dependencies in aptible-cli.gemspec
gemspec
